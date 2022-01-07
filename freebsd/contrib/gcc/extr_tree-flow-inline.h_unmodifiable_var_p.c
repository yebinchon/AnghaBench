
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ MTAG_GLOBAL (int ) ;
 scalar_t__ MTAG_P (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_READONLY (int ) ;
 scalar_t__ TREE_STATIC (int ) ;

__attribute__((used)) static inline bool
unmodifiable_var_p (tree var)
{
  if (TREE_CODE (var) == SSA_NAME)
    var = SSA_NAME_VAR (var);

  if (MTAG_P (var))
    return TREE_READONLY (var) && (TREE_STATIC (var) || MTAG_GLOBAL (var));

  return TREE_READONLY (var) && (TREE_STATIC (var) || DECL_EXTERNAL (var));
}
