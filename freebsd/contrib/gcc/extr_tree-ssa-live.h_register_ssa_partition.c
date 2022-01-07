
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef scalar_t__ tree ;
struct TYPE_3__ {scalar_t__* partition_to_var; int * ref_count; } ;


 scalar_t__ NULL_TREE ;
 size_t SSA_NAME_VERSION (scalar_t__) ;
 int register_ssa_partition_check (scalar_t__) ;

__attribute__((used)) static inline void
register_ssa_partition (var_map map, tree ssa_var, bool is_use)
{
  int version;





  version = SSA_NAME_VERSION (ssa_var);
  if (is_use && map->ref_count)
    map->ref_count[version]++;

  if (map->partition_to_var[version] == NULL_TREE)
    map->partition_to_var[SSA_NAME_VERSION (ssa_var)] = ssa_var;
}
