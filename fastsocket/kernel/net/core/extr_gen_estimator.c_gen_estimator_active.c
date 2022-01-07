
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnet_stats_rate_est {int dummy; } ;
struct gnet_stats_basic_packed {int dummy; } ;


 int ASSERT_RTNL () ;
 int * gen_find_node (struct gnet_stats_basic_packed const*,struct gnet_stats_rate_est const*) ;

bool gen_estimator_active(const struct gnet_stats_basic_packed *bstats,
     const struct gnet_stats_rate_est *rate_est)
{
 ASSERT_RTNL();

 return gen_find_node(bstats, rate_est) != ((void*)0);
}
