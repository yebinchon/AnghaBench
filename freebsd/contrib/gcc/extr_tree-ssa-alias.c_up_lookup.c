
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * used_part_t ;
struct used_part_map {unsigned int uid; int * to; } ;


 scalar_t__ htab_find_with_hash (int ,struct used_part_map*,unsigned int) ;
 int used_portions ;

__attribute__((used)) static used_part_t
up_lookup (unsigned int uid)
{
  struct used_part_map *h, in;
  in.uid = uid;
  h = (struct used_part_map *) htab_find_with_hash (used_portions, &in, uid);
  if (!h)
    return ((void*)0);
  return h->to;
}
