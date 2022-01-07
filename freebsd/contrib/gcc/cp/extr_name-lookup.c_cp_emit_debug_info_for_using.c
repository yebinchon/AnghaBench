
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* imported_module_or_decl ) (scalar_t__,scalar_t__) ;} ;


 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 scalar_t__ BASELINK_P (scalar_t__) ;
 scalar_t__ DECL_BUILT_IN (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 TYPE_1__* debug_hooks ;
 scalar_t__ errorcount ;
 scalar_t__ global_namespace ;
 scalar_t__ sorrycount ;
 int stub1 (scalar_t__,scalar_t__) ;

void
cp_emit_debug_info_for_using (tree t, tree context)
{

  if (sorrycount || errorcount)
    return;



  if (TREE_CODE (t) == FUNCTION_DECL
      && DECL_EXTERNAL (t)
      && DECL_BUILT_IN (t))
    return;



  if (context == global_namespace)
    context = NULL_TREE;

  if (BASELINK_P (t))
    t = BASELINK_FUNCTIONS (t);


  for (t = OVL_CURRENT (t); t; t = OVL_NEXT (t))
    if (TREE_CODE (t) != TEMPLATE_DECL)
      (*debug_hooks->imported_module_or_decl) (t, context);
}
