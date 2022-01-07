
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct set_elem {scalar_t__ id; } ;
struct list_set {scalar_t__ size; } ;
typedef int ip_set_id_t ;


 scalar_t__ IPSET_INVALID_ID ;
 struct set_elem* list_set_elem (struct list_set*,scalar_t__) ;
 int swap (scalar_t__,int ) ;

__attribute__((used)) static void
list_elem_add(struct list_set *map, u32 i, ip_set_id_t id)
{
 struct set_elem *e;

 for (; i < map->size; i++) {
  e = list_set_elem(map, i);
  swap(e->id, id);
  if (e->id == IPSET_INVALID_ID)
   break;
 }
}
