
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zone {int dummy; } ;
struct sysdev_attribute {int dummy; } ;
struct sys_device {int id; } ;
typedef int ssize_t ;
struct TYPE_2__ {struct zone* node_zones; } ;


 int MAX_NR_ZONES ;
 TYPE_1__* NODE_DATA (int ) ;
 int populated_zone (struct zone*) ;
 int scan_zone_unevictable_pages (struct zone*) ;
 unsigned long strict_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t write_scan_unevictable_node(struct sys_device *dev,
        struct sysdev_attribute *attr,
     const char *buf, size_t count)
{
 struct zone *node_zones = NODE_DATA(dev->id)->node_zones;
 struct zone *zone;
 unsigned long res;
 unsigned long req = strict_strtoul(buf, 10, &res);

 if (!req)
  return 1;

 for (zone = node_zones; zone - node_zones < MAX_NR_ZONES; ++zone) {
  if (!populated_zone(zone))
   continue;
  scan_zone_unevictable_pages(zone);
 }
 return 1;
}
