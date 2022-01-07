
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_map {scalar_t__ to; } ;
typedef int htab_t ;


 struct tree_map* htab_find (int ,struct tree_map*) ;

__attribute__((used)) static inline void
maybe_add_match (htab_t ref_map, struct tree_map *key)
{
  struct tree_map *found = htab_find (ref_map, key);

  if (found && !found->to)
    found->to = key->to;
}
