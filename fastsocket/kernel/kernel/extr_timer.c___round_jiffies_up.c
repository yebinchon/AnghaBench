
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long round_jiffies_common (unsigned long,int,int) ;

unsigned long __round_jiffies_up(unsigned long j, int cpu)
{
 return round_jiffies_common(j, cpu, 1);
}
