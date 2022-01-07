
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int PHI_ARG_DEF (int ,int) ;
 int PHI_NUM_ARGS (int ) ;
 int PHI_RESULT (int ) ;
 scalar_t__ SSA_NAME ;
 scalar_t__ TREE_CODE (int ) ;
 int is_gimple_reg (int ) ;
 int warn_uninit (int ,char*,int *) ;

__attribute__((used)) static void
warn_uninitialized_phi (tree phi)
{
  int i, n = PHI_NUM_ARGS (phi);


  if (!is_gimple_reg (PHI_RESULT (phi)))
    return;

  for (i = 0; i < n; ++i)
    {
      tree op = PHI_ARG_DEF (phi, i);
      if (TREE_CODE (op) == SSA_NAME)
 warn_uninit (op, "%H%qD may be used uninitialized in this function",
       ((void*)0));
    }
}
