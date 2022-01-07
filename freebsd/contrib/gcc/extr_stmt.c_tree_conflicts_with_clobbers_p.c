
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int HARD_REG_SET ;
typedef int DECL_REGISTER ;


 int DECL_NAME (scalar_t__) ;
 int IDENTIFIER_POINTER (int ) ;
 int error (char*,int ) ;
 scalar_t__ tree_overlaps_hard_reg_set (scalar_t__,int *) ;

__attribute__((used)) static bool
tree_conflicts_with_clobbers_p (tree t, HARD_REG_SET *clobbered_regs)
{


  tree overlap = tree_overlaps_hard_reg_set (t, clobbered_regs);

  if (overlap)
    {
      error ("asm-specifier for variable %qs conflicts with asm clobber list",
      IDENTIFIER_POINTER (DECL_NAME (overlap)));



      DECL_REGISTER (overlap) = 0;
      return 1;
    }

  return 0;
}
