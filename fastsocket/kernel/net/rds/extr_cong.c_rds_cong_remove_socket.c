
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int rs_bound_port; int rs_bound_addr; int rs_cong_list; } ;
struct rds_cong_map {int dummy; } ;


 int list_del_init (int *) ;
 int rds_cong_clear_bit (struct rds_cong_map*,int ) ;
 int rds_cong_lock ;
 int rds_cong_monitor_lock ;
 int rds_cong_queue_updates (struct rds_cong_map*) ;
 scalar_t__ rds_cong_test_bit (struct rds_cong_map*,int ) ;
 struct rds_cong_map* rds_cong_tree_walk (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

void rds_cong_remove_socket(struct rds_sock *rs)
{
 unsigned long flags;
 struct rds_cong_map *map;

 write_lock_irqsave(&rds_cong_monitor_lock, flags);
 list_del_init(&rs->rs_cong_list);
 write_unlock_irqrestore(&rds_cong_monitor_lock, flags);


 spin_lock_irqsave(&rds_cong_lock, flags);
 map = rds_cong_tree_walk(rs->rs_bound_addr, ((void*)0));
 spin_unlock_irqrestore(&rds_cong_lock, flags);

 if (map && rds_cong_test_bit(map, rs->rs_bound_port)) {
  rds_cong_clear_bit(map, rs->rs_bound_port);
  rds_cong_queue_updates(map);
 }
}
