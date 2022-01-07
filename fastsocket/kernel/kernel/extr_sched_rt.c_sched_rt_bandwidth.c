
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_rq {int dummy; } ;
struct rt_bandwidth {int dummy; } ;


 struct rt_bandwidth def_rt_bandwidth ;

__attribute__((used)) static inline struct rt_bandwidth *sched_rt_bandwidth(struct rt_rq *rt_rq)
{
 return &def_rt_bandwidth;
}
