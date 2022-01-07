
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ LABEL_DECL ;
 scalar_t__ RESULT_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_STATIC (int ) ;
 scalar_t__ local_variable_p (int ) ;

int
nonstatic_local_decl_p (tree t)
{
  return ((local_variable_p (t) && !TREE_STATIC (t))
   || TREE_CODE (t) == LABEL_DECL
   || TREE_CODE (t) == RESULT_DECL);
}
