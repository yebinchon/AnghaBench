
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_set {struct bitmap_ip* data; } ;
struct bitmap_ip {int members; int gc; int timeout; } ;


 int del_timer_sync (int *) ;
 int ip_set_free (int ) ;
 int kfree (struct bitmap_ip*) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static void
bitmap_ip_destroy(struct ip_set *set)
{
 struct bitmap_ip *map = set->data;

 if (with_timeout(map->timeout))
  del_timer_sync(&map->gc);

 ip_set_free(map->members);
 kfree(map);

 set->data = ((void*)0);
}
