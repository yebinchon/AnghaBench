
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef scalar_t__ tipc_mode_event ;
struct tipc_user {size_t next; int ports; void* usr_handle; scalar_t__ callback; } ;
typedef int Handler ;


 int EBUSY ;
 int ENOPROTOOPT ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ TIPC_NOT_RUNNING ;
 int atomic_inc (int *) ;
 size_t next_free_user ;
 scalar_t__ reg_callback ;
 int reg_init () ;
 int reg_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_k_signal (int ,unsigned long) ;
 scalar_t__ tipc_mode ;
 int tipc_user_count ;
 struct tipc_user* users ;

int tipc_attach(u32 *userid, tipc_mode_event cb, void *usr_handle)
{
 struct tipc_user *user_ptr;

 if ((tipc_mode == TIPC_NOT_RUNNING) && !cb)
  return -ENOPROTOOPT;
 if (!users)
  reg_init();

 spin_lock_bh(&reg_lock);
 if (!next_free_user) {
  spin_unlock_bh(&reg_lock);
  return -EBUSY;
 }
 user_ptr = &users[next_free_user];
 *userid = next_free_user;
 next_free_user = user_ptr->next;
 user_ptr->next = -1;
 spin_unlock_bh(&reg_lock);

 user_ptr->callback = cb;
 user_ptr->usr_handle = usr_handle;
 INIT_LIST_HEAD(&user_ptr->ports);
 atomic_inc(&tipc_user_count);

 if (cb && (tipc_mode != TIPC_NOT_RUNNING))
  tipc_k_signal((Handler)reg_callback, (unsigned long)user_ptr);
 return 0;
}
