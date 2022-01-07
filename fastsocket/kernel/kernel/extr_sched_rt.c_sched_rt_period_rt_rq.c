
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_rq {int dummy; } ;
struct rt_bandwidth {int dummy; } ;
struct TYPE_2__ {struct rt_rq rt; } ;


 TYPE_1__* cpu_rq (int) ;

__attribute__((used)) static inline
struct rt_rq *sched_rt_period_rt_rq(struct rt_bandwidth *rt_b, int cpu)
{
 return &cpu_rq(cpu)->rt;
}
