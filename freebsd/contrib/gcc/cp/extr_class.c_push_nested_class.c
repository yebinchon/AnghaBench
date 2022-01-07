
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ CLASS_TYPE_P (scalar_t__) ;
 scalar_t__ DECL_CONTEXT (int ) ;
 int IS_AGGR_TYPE (scalar_t__) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TYPE_MAIN_DECL (scalar_t__) ;
 scalar_t__ error_mark_node ;
 int pushclass (scalar_t__) ;

void
push_nested_class (tree type)
{
  tree context;


  if (type == NULL_TREE
      || type == error_mark_node
      || TREE_CODE (type) == NAMESPACE_DECL
      || ! IS_AGGR_TYPE (type)
      || TREE_CODE (type) == TEMPLATE_TYPE_PARM
      || TREE_CODE (type) == BOUND_TEMPLATE_TEMPLATE_PARM)
    return;

  context = DECL_CONTEXT (TYPE_MAIN_DECL (type));

  if (context && CLASS_TYPE_P (context))
    push_nested_class (context);
  pushclass (type);
}
