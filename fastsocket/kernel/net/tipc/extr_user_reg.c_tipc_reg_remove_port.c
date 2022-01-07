
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_port {scalar_t__ user_ref; int uport_list; } ;


 int EINVAL ;
 int ENOPROTOOPT ;
 scalar_t__ MAX_USERID ;
 int list_del_init (int *) ;
 int reg_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int users ;

int tipc_reg_remove_port(struct user_port *up_ptr)
{
 if (up_ptr->user_ref == 0)
  return 0;
 if (up_ptr->user_ref > MAX_USERID)
  return -EINVAL;
 if (!users )
  return -ENOPROTOOPT;

 spin_lock_bh(&reg_lock);
 list_del_init(&up_ptr->uport_list);
 spin_unlock_bh(&reg_lock);
 return 0;
}
