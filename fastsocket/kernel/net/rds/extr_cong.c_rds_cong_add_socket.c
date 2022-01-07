
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int rs_cong_list; } ;


 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int rds_cong_monitor ;
 int rds_cong_monitor_lock ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rds_cong_add_socket(struct rds_sock *rs)
{
 unsigned long flags;

 write_lock_irqsave(&rds_cong_monitor_lock, flags);
 if (list_empty(&rs->rs_cong_list))
  list_add(&rs->rs_cong_list, &rds_cong_monitor);
 write_unlock_irqrestore(&rds_cong_monitor_lock, flags);
}
