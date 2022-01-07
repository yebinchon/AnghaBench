
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct set_elem {int id; } ;
struct list_set {size_t size; size_t dsize; unsigned long timeout; } ;
struct ip_set {struct list_set* data; } ;


 int GFP_KERNEL ;
 int IPSET_INVALID_ID ;
 struct list_set* kzalloc (int,int ) ;
 struct set_elem* list_set_elem (struct list_set*,size_t) ;

__attribute__((used)) static bool
init_list_set(struct ip_set *set, u32 size, size_t dsize,
       unsigned long timeout)
{
 struct list_set *map;
 struct set_elem *e;
 u32 i;

 map = kzalloc(sizeof(*map) + size * dsize, GFP_KERNEL);
 if (!map)
  return 0;

 map->size = size;
 map->dsize = dsize;
 map->timeout = timeout;
 set->data = map;

 for (i = 0; i < size; i++) {
  e = list_set_elem(map, i);
  e->id = IPSET_INVALID_ID;
 }

 return 1;
}
