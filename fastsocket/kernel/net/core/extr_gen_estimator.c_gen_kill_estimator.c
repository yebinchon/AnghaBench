
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnet_stats_rate_est {int dummy; } ;
struct gnet_stats_basic_packed {int dummy; } ;
struct gen_estimator {int e_rcu; int list; int * bstats; int node; } ;


 int __gen_kill_estimator ;
 int call_rcu (int *,int ) ;
 int est_lock ;
 int est_root ;
 struct gen_estimator* gen_find_node (struct gnet_stats_basic_packed*,struct gnet_stats_rate_est*) ;
 int list_del_rcu (int *) ;
 int rb_erase (int *,int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void gen_kill_estimator(struct gnet_stats_basic_packed *bstats,
   struct gnet_stats_rate_est *rate_est)
{
 struct gen_estimator *e;

 while ((e = gen_find_node(bstats, rate_est))) {
  rb_erase(&e->node, &est_root);

  write_lock_bh(&est_lock);
  e->bstats = ((void*)0);
  write_unlock_bh(&est_lock);

  list_del_rcu(&e->list);
  call_rcu(&e->e_rcu, __gen_kill_estimator);
 }
}
