
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; scalar_t__ expires; int function; } ;
struct list_set {TYPE_1__ gc; int timeout; } ;
struct ip_set {struct list_set* data; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 int init_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int list_set_gc ;

__attribute__((used)) static void
list_set_gc_init(struct ip_set *set)
{
 struct list_set *map = set->data;

 init_timer(&map->gc);
 map->gc.data = (unsigned long) set;
 map->gc.function = list_set_gc;
 map->gc.expires = jiffies + IPSET_GC_PERIOD(map->timeout) * HZ;
 add_timer(&map->gc);
}
