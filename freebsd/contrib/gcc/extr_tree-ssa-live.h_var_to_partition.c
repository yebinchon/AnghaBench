
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef TYPE_2__* var_ann_t ;
typedef int tree ;
struct TYPE_7__ {scalar_t__ out_of_ssa_tag; } ;
struct TYPE_6__ {int* partition_to_compact; int var_partition; } ;


 int NO_PARTITION ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int VAR_ANN_PARTITION (TYPE_2__*) ;
 int partition_find (int ,int ) ;
 TYPE_2__* var_ann (int ) ;

__attribute__((used)) static inline int
var_to_partition (var_map map, tree var)
{
  var_ann_t ann;
  int part;

  if (TREE_CODE (var) == SSA_NAME)
    {
      part = partition_find (map->var_partition, SSA_NAME_VERSION (var));
      if (map->partition_to_compact)
 part = map->partition_to_compact[part];
    }
  else
    {
      ann = var_ann (var);
      if (ann->out_of_ssa_tag)
 part = VAR_ANN_PARTITION (ann);
      else
        part = NO_PARTITION;
    }
  return part;
}
