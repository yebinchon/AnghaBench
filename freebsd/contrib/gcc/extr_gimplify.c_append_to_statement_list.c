
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 int append_to_statement_list_1 (scalar_t__,scalar_t__*) ;

void
append_to_statement_list (tree t, tree *list_p)
{
  if (t && TREE_SIDE_EFFECTS (t))
    append_to_statement_list_1 (t, list_p);
}
