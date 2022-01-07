
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ LABEL_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_SIDE_EFFECTS (int ) ;

__attribute__((used)) static bool
should_carry_locus_p (tree stmt)
{



  if (TREE_CODE (stmt) == LABEL_EXPR)
    return 0;


  if (!TREE_SIDE_EFFECTS (stmt))
    return 0;

  return 1;
}
