
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct set_elem {scalar_t__ id; } ;
struct list_set {int size; int timeout; } ;
typedef int ip_set_id_t ;


 scalar_t__ IPSET_INVALID_ID ;
 int ip_set_put_byindex (scalar_t__) ;
 int ip_set_timeout_set (unsigned long) ;
 int list_elem_add (struct list_set*,int,int ) ;
 int list_elem_tadd (struct list_set*,int,int ,int ) ;
 struct set_elem* list_set_elem (struct list_set*,int) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static int
list_set_add(struct list_set *map, u32 i, ip_set_id_t id,
      unsigned long timeout)
{
 const struct set_elem *e = list_set_elem(map, i);

 if (i == map->size - 1 && e->id != IPSET_INVALID_ID)

  ip_set_put_byindex(e->id);
 if (with_timeout(map->timeout))
  list_elem_tadd(map, i, id, ip_set_timeout_set(timeout));
 else
  list_elem_add(map, i, id);

 return 0;
}
