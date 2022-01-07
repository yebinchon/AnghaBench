
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {unsigned long max_age; unsigned long bridge_max_age; } ;


 scalar_t__ br_is_root_bridge (struct net_bridge*) ;
 unsigned long clock_t_to_jiffies (unsigned long) ;

__attribute__((used)) static int set_max_age(struct net_bridge *br, unsigned long val)
{
 unsigned long t = clock_t_to_jiffies(val);
 br->max_age = t;
 if (br_is_root_bridge(br))
  br->bridge_max_age = t;
 return 0;
}
