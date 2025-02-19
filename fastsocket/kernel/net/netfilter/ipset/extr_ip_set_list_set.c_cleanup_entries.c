
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct set_telem {scalar_t__ id; } ;
struct list_set {scalar_t__ size; } ;


 scalar_t__ IPSET_INVALID_ID ;
 int list_set_del (struct list_set*,scalar_t__) ;
 scalar_t__ list_set_expired (struct list_set*,scalar_t__) ;
 struct set_telem* list_set_telem (struct list_set*,scalar_t__) ;

__attribute__((used)) static void
cleanup_entries(struct list_set *map)
{
 struct set_telem *e;
 u32 i;

 for (i = 0; i < map->size; i++) {
  e = list_set_telem(map, i);
  if (e->id != IPSET_INVALID_ID && list_set_expired(map, i))
   list_set_del(map, i);
 }
}
