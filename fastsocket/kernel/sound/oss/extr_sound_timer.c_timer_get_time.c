
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long curr_ticks ;
 int opened ;

__attribute__((used)) static unsigned long timer_get_time(int dev)
{
 if (!opened)
  return 0;
 return curr_ticks;
}
