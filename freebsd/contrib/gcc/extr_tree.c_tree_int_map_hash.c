
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_int_map {int from; } ;


 unsigned int htab_hash_pointer (int ) ;

__attribute__((used)) static unsigned int
tree_int_map_hash (const void *item)
{
  return htab_hash_pointer (((const struct tree_int_map *)item)->from);
}
