
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int ageing_time; } ;


 int clock_t_to_jiffies (unsigned long) ;

__attribute__((used)) static int set_ageing_time(struct net_bridge *br, unsigned long val)
{
 br->ageing_time = clock_t_to_jiffies(val);
 return 0;
}
