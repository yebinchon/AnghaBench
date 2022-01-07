
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long cpu_clock (int) ;

__attribute__((used)) static unsigned long get_timestamp(int this_cpu)
{
 return cpu_clock(this_cpu) >> 30LL;
}
