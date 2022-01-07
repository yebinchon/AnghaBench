
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int DECL_P (scalar_t__) ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static inline bool
identical_copies_p (tree s1, tree s2)
{







  if (TREE_OPERAND (s1, 0) != TREE_OPERAND (s2, 0))
    return 0;

  s1 = TREE_OPERAND (s1, 1);
  s2 = TREE_OPERAND (s2, 1);

  if (s1 != s2)
    return 0;

  return 1;
}
