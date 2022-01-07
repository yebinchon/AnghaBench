
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ expires; } ;
struct list_set {TYPE_1__ gc; int timeout; } ;
struct ip_set {int lock; struct list_set* data; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 int cleanup_entries (struct list_set*) ;
 scalar_t__ jiffies ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void
list_set_gc(unsigned long ul_set)
{
 struct ip_set *set = (struct ip_set *) ul_set;
 struct list_set *map = set->data;

 write_lock_bh(&set->lock);
 cleanup_entries(map);
 write_unlock_bh(&set->lock);

 map->gc.expires = jiffies + IPSET_GC_PERIOD(map->timeout) * HZ;
 add_timer(&map->gc);
}
