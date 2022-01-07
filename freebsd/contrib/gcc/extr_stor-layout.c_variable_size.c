
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_6__ {scalar_t__ x_dont_save_pending_sizes_p; } ;
struct TYPE_4__ {scalar_t__ (* global_bindings_p ) () ;} ;
struct TYPE_5__ {TYPE_1__ decls; } ;


 scalar_t__ CONTAINS_PLACEHOLDER_P (int ) ;
 scalar_t__ TREE_CONSTANT (int ) ;
 TYPE_3__* cfun ;
 int error (char*) ;
 TYPE_2__ lang_hooks ;
 int put_pending_size (int ) ;
 int save_expr (int ) ;
 int size_one_node ;
 int skip_simple_arithmetic (int ) ;
 scalar_t__ stub1 () ;
 scalar_t__ stub2 () ;

tree
variable_size (tree size)
{
  tree save;





  if (TREE_CONSTANT (size)
      || lang_hooks.decls.global_bindings_p () < 0
      || CONTAINS_PLACEHOLDER_P (size))
    return size;

  size = save_expr (size);
  save = skip_simple_arithmetic (size);

  if (cfun && cfun->x_dont_save_pending_sizes_p)


    return size;

  if (lang_hooks.decls.global_bindings_p ())
    {
      if (TREE_CONSTANT (size))
 error ("type size can%'t be explicitly evaluated");
      else
 error ("variable-size type declared outside of any function");

      return size_one_node;
    }

  put_pending_size (save);

  return size;
}
