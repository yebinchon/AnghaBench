
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef int tree ;
struct _var_map {int dummy; } ;
struct TYPE_3__ {int num_partitions; int partition_size; int * ref_count; int * compact_to_partition; int * partition_to_compact; int * partition_to_var; int var_partition; } ;


 int memset (int *,int ,int) ;
 int partition_new (int) ;
 scalar_t__ xmalloc (int) ;

var_map
init_var_map (int size)
{
  var_map map;

  map = (var_map) xmalloc (sizeof (struct _var_map));
  map->var_partition = partition_new (size);
  map->partition_to_var
       = (tree *)xmalloc (size * sizeof (tree));
  memset (map->partition_to_var, 0, size * sizeof (tree));

  map->partition_to_compact = ((void*)0);
  map->compact_to_partition = ((void*)0);
  map->num_partitions = size;
  map->partition_size = size;
  map->ref_count = ((void*)0);
  return map;
}
