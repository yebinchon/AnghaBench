
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ip_set {struct bitmap_ipmac* data; } ;
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct bitmap_ipmac {TYPE_1__ gc; int timeout; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 int bitmap_ipmac_gc ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
bitmap_ipmac_gc_init(struct ip_set *set)
{
 struct bitmap_ipmac *map = set->data;

 init_timer(&map->gc);
 map->gc.data = (unsigned long) set;
 map->gc.function = bitmap_ipmac_gc;
 map->gc.expires = jiffies + IPSET_GC_PERIOD(map->timeout) * HZ;
 add_timer(&map->gc);
}
