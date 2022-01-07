
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long curr_timebase ;
 int hw_timebase ;

__attribute__((used)) static unsigned long clocks2ticks(unsigned long clocks)
{






 return ((clocks * curr_timebase) + (hw_timebase / 2)) / hw_timebase;
}
