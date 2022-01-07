
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_3__ {int * (* analyze_expr ) (int **,int*,void*) ;} ;
struct TYPE_4__ {TYPE_1__ callgraph; } ;



 int DECL_EXTERNAL (int *) ;

 int FUNCTION_DECL ;
 int IS_TYPE_OR_DECL_P (int *) ;
 unsigned int LAST_AND_UNUSED_TREE_CODE ;
 int TREE_CODE (int *) ;
 int * TREE_OPERAND (int *,int ) ;
 int TREE_STATIC (int *) ;

 int cgraph_mark_needed_node (int ) ;
 int cgraph_node (int *) ;
 int cgraph_varpool_mark_needed_node (int ) ;
 int cgraph_varpool_node (int *) ;
 int flag_unit_at_a_time ;
 TYPE_2__ lang_hooks ;
 int * stub1 (int **,int*,void*) ;
 int * stub2 (int **,int*,void*) ;

__attribute__((used)) static tree
record_reference (tree *tp, int *walk_subtrees, void *data)
{
  tree t = *tp;

  switch (TREE_CODE (t))
    {
    case 128:



      if (TREE_STATIC (t) || DECL_EXTERNAL (t))
 {
   cgraph_varpool_mark_needed_node (cgraph_varpool_node (t));
   if (lang_hooks.callgraph.analyze_expr)
     return lang_hooks.callgraph.analyze_expr (tp, walk_subtrees,
            data);
 }
      break;

    case 129:
    case 130:
      if (flag_unit_at_a_time)
 {


   tree decl = TREE_OPERAND (*tp, 0);
   if (TREE_CODE (decl) == FUNCTION_DECL)
     cgraph_mark_needed_node (cgraph_node (decl));
 }
      break;

    default:


      if (IS_TYPE_OR_DECL_P (*tp))
 {
   *walk_subtrees = 0;
   break;
 }

      if ((unsigned int) TREE_CODE (t) >= LAST_AND_UNUSED_TREE_CODE)
 return lang_hooks.callgraph.analyze_expr (tp, walk_subtrees, data);
      break;
    }

  return ((void*)0);
}
