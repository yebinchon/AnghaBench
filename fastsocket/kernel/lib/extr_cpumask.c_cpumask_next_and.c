
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpumask {int dummy; } ;


 int cpumask_next (int,struct cpumask const*) ;
 scalar_t__ cpumask_test_cpu (int,struct cpumask const*) ;
 int nr_cpu_ids ;

int cpumask_next_and(int n, const struct cpumask *src1p,
       const struct cpumask *src2p)
{
 while ((n = cpumask_next(n, src1p)) < nr_cpu_ids)
  if (cpumask_test_cpu(n, src2p))
   break;
 return n;
}
