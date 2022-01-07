
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int EINVAL ;
 int ENOPROTOOPT ;
 scalar_t__ TIPC_MAX_LINK_WIN ;
 scalar_t__ TIPC_MIN_LINK_WIN ;
 int bc_lock ;
 int bcl ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_link_set_queue_limits (int ,scalar_t__) ;

int tipc_bclink_set_queue_limits(u32 limit)
{
 if (!bcl)
  return -ENOPROTOOPT;
 if ((limit < TIPC_MIN_LINK_WIN) || (limit > TIPC_MAX_LINK_WIN))
  return -EINVAL;

 spin_lock_bh(&bc_lock);
 tipc_link_set_queue_limits(bcl, limit);
 spin_unlock_bh(&bc_lock);
 return 0;
}
