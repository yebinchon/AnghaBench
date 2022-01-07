
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* tipc_mode_event ) (void*,int ,int ) ;
struct tipc_user {void* usr_handle; int (* callback ) (void*,int ,int ) ;} ;


 int reg_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_mode ;
 int tipc_own_addr ;

__attribute__((used)) static void reg_callback(struct tipc_user *user_ptr)
{
 tipc_mode_event cb;
 void *arg;

 spin_lock_bh(&reg_lock);
 cb = user_ptr->callback;
 arg = user_ptr->usr_handle;
 spin_unlock_bh(&reg_lock);

 if (cb)
  cb(arg, tipc_mode, tipc_own_addr);
}
