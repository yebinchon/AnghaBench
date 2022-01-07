
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef int tree ;
struct TYPE_3__ {int* compact_to_partition; int * partition_to_var; int var_partition; } ;


 int partition_find (int ,int) ;

__attribute__((used)) static inline tree
partition_to_var (var_map map, int i)
{
  if (map->compact_to_partition)
    i = map->compact_to_partition[i];
  i = partition_find (map->var_partition, i);
  return map->partition_to_var[i];
}
