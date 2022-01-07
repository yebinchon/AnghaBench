
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct set_telem {int timeout; } ;
struct set_elem {scalar_t__ id; } ;
struct list_set {int size; int timeout; } ;


 scalar_t__ IPSET_INVALID_ID ;
 int ip_set_put_byindex (scalar_t__) ;
 struct set_elem* list_set_elem (struct list_set*,int) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static int
list_set_del(struct list_set *map, u32 i)
{
 struct set_elem *a = list_set_elem(map, i), *b;

 ip_set_put_byindex(a->id);

 for (; i < map->size - 1; i++) {
  b = list_set_elem(map, i + 1);
  a->id = b->id;
  if (with_timeout(map->timeout))
   ((struct set_telem *)a)->timeout =
    ((struct set_telem *)b)->timeout;
  a = b;
  if (a->id == IPSET_INVALID_ID)
   break;
 }

 a->id = IPSET_INVALID_ID;
 return 0;
}
