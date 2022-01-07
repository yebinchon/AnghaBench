
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct set_elem {scalar_t__ id; } ;
struct list_set {scalar_t__ size; int timeout; } ;
typedef scalar_t__ ip_set_id_t ;


 struct set_elem* list_set_elem (struct list_set const*,scalar_t__) ;
 scalar_t__ list_set_expired (struct list_set const*,scalar_t__) ;
 scalar_t__ with_timeout (int ) ;

__attribute__((used)) static bool
id_eq_timeout(const struct list_set *map, u32 i, ip_set_id_t id)
{
 const struct set_elem *elem;

 if (i < map->size) {
  elem = list_set_elem(map, i);
  return !!(elem->id == id &&
     !(with_timeout(map->timeout) &&
       list_set_expired(map, i)));
 }

 return 0;
}
