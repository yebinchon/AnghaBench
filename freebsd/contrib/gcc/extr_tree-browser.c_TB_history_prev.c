
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 scalar_t__ TB_history_stack ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;

__attribute__((used)) static tree
TB_history_prev (void)
{
  if (TB_history_stack)
    {
      TB_history_stack = TREE_CHAIN (TB_history_stack);
      if (TB_history_stack)
 return TREE_VALUE (TB_history_stack);
    }
  return NULL_TREE;
}
