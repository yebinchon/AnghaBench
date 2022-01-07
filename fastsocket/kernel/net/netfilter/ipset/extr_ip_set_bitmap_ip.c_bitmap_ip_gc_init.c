
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ip_set {struct bitmap_ip* data; } ;
struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct bitmap_ip {TYPE_1__ gc; int timeout; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 int bitmap_ip_gc ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
bitmap_ip_gc_init(struct ip_set *set)
{
 struct bitmap_ip *map = set->data;

 init_timer(&map->gc);
 map->gc.data = (unsigned long) set;
 map->gc.function = bitmap_ip_gc;
 map->gc.expires = jiffies + IPSET_GC_PERIOD(map->timeout) * HZ;
 add_timer(&map->gc);
}
