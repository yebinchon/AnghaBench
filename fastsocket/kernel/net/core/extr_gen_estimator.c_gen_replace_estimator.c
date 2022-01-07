
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct gnet_stats_rate_est {int dummy; } ;
struct gnet_stats_basic_packed {int dummy; } ;
typedef int spinlock_t ;


 int gen_kill_estimator (struct gnet_stats_basic_packed*,struct gnet_stats_rate_est*) ;
 int gen_new_estimator (struct gnet_stats_basic_packed*,struct gnet_stats_rate_est*,int *,struct nlattr*) ;

int gen_replace_estimator(struct gnet_stats_basic_packed *bstats,
     struct gnet_stats_rate_est *rate_est,
     spinlock_t *stats_lock, struct nlattr *opt)
{
 gen_kill_estimator(bstats, rate_est);
 return gen_new_estimator(bstats, rate_est, stats_lock, opt);
}
