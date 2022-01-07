
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* imported_module_or_decl ) (scalar_t__,scalar_t__) ;} ;


 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ ORIGINAL_NAMESPACE (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int USING_STMT ;
 int add_stmt (int ) ;
 int add_using_namespace (scalar_t__,scalar_t__,int ) ;
 int build_stmt (int ,scalar_t__) ;
 scalar_t__ building_stmt_tree () ;
 scalar_t__ current_namespace ;
 scalar_t__ current_scope () ;
 TYPE_1__* debug_hooks ;
 scalar_t__ error_mark_node ;
 int gcc_assert (int) ;
 scalar_t__ global_namespace ;
 int processing_template_decl ;
 int push_using_directive (scalar_t__) ;
 int stub1 (scalar_t__,scalar_t__) ;
 int toplevel_bindings_p () ;

void
do_using_directive (tree namespace)
{
  tree context = NULL_TREE;

  if (namespace == error_mark_node)
    return;

  gcc_assert (TREE_CODE (namespace) == NAMESPACE_DECL);

  if (building_stmt_tree ())
    add_stmt (build_stmt (USING_STMT, namespace));
  namespace = ORIGINAL_NAMESPACE (namespace);

  if (!toplevel_bindings_p ())
    {
      push_using_directive (namespace);
      context = current_scope ();
    }
  else
    {

      add_using_namespace (current_namespace, namespace, 0);
      if (current_namespace != global_namespace)
 context = current_namespace;
    }


  if (!processing_template_decl)
    (*debug_hooks->imported_module_or_decl) (namespace, context);
}
