
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct call_single_data {int dummy; } ;


 int __local_trigger (struct call_single_data*,int) ;
 scalar_t__ __try_remote_softirq (struct call_single_data*,int,int) ;

void __send_remote_softirq(struct call_single_data *cp, int cpu, int this_cpu, int softirq)
{
 if (cpu == this_cpu || __try_remote_softirq(cp, cpu, softirq))
  __local_trigger(cp, softirq);
}
