
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef int tree ;
struct TYPE_4__ {int* partition_to_compact; int var_partition; } ;


 int NO_PARTITION ;
 int NULL_TREE ;
 int partition_find (int ,int) ;
 int partition_to_var (TYPE_1__*,int) ;

__attribute__((used)) static inline tree version_to_var (var_map map, int version)
{
  int part;
  part = partition_find (map->var_partition, version);
  if (map->partition_to_compact)
    part = map->partition_to_compact[part];
  if (part == NO_PARTITION)
    return NULL_TREE;

  return partition_to_var (map, part);
}
