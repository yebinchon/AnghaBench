
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2hb_heartbeat_group {int dummy; } ;
typedef int ssize_t ;


 int o2hb_dead_threshold ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t o2hb_heartbeat_group_threshold_show(struct o2hb_heartbeat_group *group,
           char *page)
{
 return sprintf(page, "%u\n", o2hb_dead_threshold);
}
