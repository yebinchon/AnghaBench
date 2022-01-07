
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
struct TYPE_4__ {struct TYPE_4__* ref_count; struct TYPE_4__* compact_to_partition; struct TYPE_4__* partition_to_compact; int var_partition; struct TYPE_4__* partition_to_var; } ;


 int free (TYPE_1__*) ;
 int partition_delete (int ) ;

void
delete_var_map (var_map map)
{
  free (map->partition_to_var);
  partition_delete (map->var_partition);
  if (map->partition_to_compact)
    free (map->partition_to_compact);
  if (map->compact_to_partition)
    free (map->compact_to_partition);
  if (map->ref_count)
    free (map->ref_count);
  free (map);
}
