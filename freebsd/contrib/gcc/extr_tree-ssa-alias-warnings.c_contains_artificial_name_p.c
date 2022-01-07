
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ find_first_artificial_name (int ) ;
 int get_ssa_base (int ) ;

__attribute__((used)) static bool
contains_artificial_name_p (tree var)
{
  if (TREE_CODE (var) == SSA_NAME)
    return contains_artificial_name_p (get_ssa_base (var));

  return find_first_artificial_name (var) != NULL_TREE;
}
