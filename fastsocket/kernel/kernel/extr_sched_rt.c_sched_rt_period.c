
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct rt_rq {int dummy; } ;
struct TYPE_2__ {int rt_period; } ;


 TYPE_1__ def_rt_bandwidth ;
 int ktime_to_ns (int ) ;

__attribute__((used)) static inline u64 sched_rt_period(struct rt_rq *rt_rq)
{
 return ktime_to_ns(def_rt_bandwidth.rt_period);
}
