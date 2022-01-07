
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_set {int gc; int timeout; } ;
struct ip_set {struct list_set* data; } ;


 int del_timer_sync (int *) ;
 int kfree (struct list_set*) ;
 int list_set_flush (struct ip_set*) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static void
list_set_destroy(struct ip_set *set)
{
 struct list_set *map = set->data;

 if (with_timeout(map->timeout))
  del_timer_sync(&map->gc);
 list_set_flush(set);
 kfree(map);

 set->data = ((void*)0);
}
