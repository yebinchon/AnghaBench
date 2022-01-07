
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* auto_var_in_fn_p ) (int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ tree_inlining; } ;


 scalar_t__ DECL_P (int ) ;
 int NULL_TREE ;
 scalar_t__ TYPE_P (int ) ;
 TYPE_2__ lang_hooks ;
 scalar_t__ stub1 (int ,int ) ;

__attribute__((used)) static tree
find_var_from_fn (tree *tp, int *walk_subtrees, void *data)
{
  tree fn = (tree) data;

  if (TYPE_P (*tp))
    *walk_subtrees = 0;

  else if (DECL_P (*tp)
    && lang_hooks.tree_inlining.auto_var_in_fn_p (*tp, fn))
    return *tp;

  return NULL_TREE;
}
