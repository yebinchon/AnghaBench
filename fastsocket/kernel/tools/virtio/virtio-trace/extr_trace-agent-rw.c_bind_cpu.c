
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mask ;
typedef int cpu_set_t ;


 int CPU_SET (int,int *) ;
 int CPU_ZERO (int *) ;
 int pr_err (char*,int) ;
 int sched_setaffinity (int ,int,int *) ;

__attribute__((used)) static void bind_cpu(int cpu_num)
{
 cpu_set_t mask;

 CPU_ZERO(&mask);
 CPU_SET(cpu_num, &mask);


 if (sched_setaffinity(0, sizeof(mask), &mask) == -1)
  pr_err("Could not set CPU#%d affinity\n", (int)cpu_num);
}
