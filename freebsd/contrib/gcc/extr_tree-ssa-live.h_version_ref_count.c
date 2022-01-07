
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_map ;
typedef int tree ;
struct TYPE_3__ {int* ref_count; } ;


 int SSA_NAME_VERSION (int ) ;
 int gcc_assert (int*) ;

__attribute__((used)) static inline int
version_ref_count (var_map map, tree ssa_var)
{
  int version = SSA_NAME_VERSION (ssa_var);
  gcc_assert (map->ref_count);
  return map->ref_count[version];
}
