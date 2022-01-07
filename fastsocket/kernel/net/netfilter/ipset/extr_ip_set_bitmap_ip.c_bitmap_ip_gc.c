
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ip_set {int lock; struct bitmap_ip* data; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct bitmap_ip {unsigned long* members; size_t elements; TYPE_1__ gc; int timeout; } ;


 int HZ ;
 unsigned long IPSET_ELEM_UNSET ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ ip_set_timeout_expired (unsigned long) ;
 scalar_t__ jiffies ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void
bitmap_ip_gc(unsigned long ul_set)
{
 struct ip_set *set = (struct ip_set *) ul_set;
 struct bitmap_ip *map = set->data;
 unsigned long *table = map->members;
 u32 id;



 read_lock_bh(&set->lock);
 for (id = 0; id < map->elements; id++)
  if (ip_set_timeout_expired(table[id]))
   table[id] = IPSET_ELEM_UNSET;
 read_unlock_bh(&set->lock);

 map->gc.expires = jiffies + IPSET_GC_PERIOD(map->timeout) * HZ;
 add_timer(&map->gc);
}
