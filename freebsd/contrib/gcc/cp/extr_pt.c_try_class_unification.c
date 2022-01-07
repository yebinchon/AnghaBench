
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CLASSTYPE_TEMPLATE_INFO (int ) ;
 int CLASSTYPE_TI_ARGS (int ) ;
 int CLASSTYPE_TI_TEMPLATE (int ) ;
 int NULL_TREE ;
 int TREE_VEC_LENGTH (int ) ;
 int UNIFY_ALLOW_NONE ;
 int make_tree_vec (int ) ;
 scalar_t__ most_general_template (int ) ;
 scalar_t__ unify (int ,int ,int ,int ,int ) ;

__attribute__((used)) static tree
try_class_unification (tree tparms, tree targs, tree parm, tree arg)
{
  tree copy_of_targs;

  if (!CLASSTYPE_TEMPLATE_INFO (arg)
      || (most_general_template (CLASSTYPE_TI_TEMPLATE (arg))
   != most_general_template (CLASSTYPE_TI_TEMPLATE (parm))))
    return NULL_TREE;
  copy_of_targs = make_tree_vec (TREE_VEC_LENGTH (targs));


  if (unify (tparms, copy_of_targs, CLASSTYPE_TI_ARGS (parm),
      CLASSTYPE_TI_ARGS (arg), UNIFY_ALLOW_NONE))
    return NULL_TREE;

  return arg;
}
