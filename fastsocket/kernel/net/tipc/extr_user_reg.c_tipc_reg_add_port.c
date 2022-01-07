
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_port {size_t user_ref; int uport_list; } ;
struct tipc_user {int ports; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 size_t MAX_USERID ;
 scalar_t__ TIPC_NOT_RUNNING ;
 int list_add (int *,int *) ;
 int reg_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tipc_mode ;
 struct tipc_user* users ;

int tipc_reg_add_port(struct user_port *up_ptr)
{
 struct tipc_user *user_ptr;

 if (up_ptr->user_ref == 0)
  return 0;
 if (up_ptr->user_ref > MAX_USERID)
  return -EINVAL;
 if ((tipc_mode == TIPC_NOT_RUNNING) || !users )
  return -ENOPROTOOPT;

 spin_lock_bh(&reg_lock);
 user_ptr = &users[up_ptr->user_ref];
 list_add(&up_ptr->uport_list, &user_ptr->ports);
 spin_unlock_bh(&reg_lock);
 return 0;
}
