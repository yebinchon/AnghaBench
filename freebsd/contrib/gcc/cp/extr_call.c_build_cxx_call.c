
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int can_throw; } ;


 scalar_t__ IS_AGGR_TYPE (int ) ;
 int TREE_NOTHROW (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (int ) ;
 scalar_t__ at_function_scope_p () ;
 scalar_t__ build_call (scalar_t__,scalar_t__) ;
 scalar_t__ build_cplus_new (int ,scalar_t__) ;
 scalar_t__ cfun ;
 scalar_t__ convert_from_reference (scalar_t__) ;
 TYPE_1__* cp_function_chain ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_if_not_in_template (scalar_t__) ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;
 scalar_t__ require_complete_type (scalar_t__) ;

tree
build_cxx_call (tree fn, tree args)
{
  tree fndecl;

  fn = build_call (fn, args);


  fndecl = get_callee_fndecl (fn);
  if ((!fndecl || !TREE_NOTHROW (fndecl))
      && at_function_scope_p ()
      && cfun)
    cp_function_chain->can_throw = 1;



  fn = fold_if_not_in_template (fn);

  if (VOID_TYPE_P (TREE_TYPE (fn)))
    return fn;

  fn = require_complete_type (fn);
  if (fn == error_mark_node)
    return error_mark_node;

  if (IS_AGGR_TYPE (TREE_TYPE (fn)))
    fn = build_cplus_new (TREE_TYPE (fn), fn);
  return convert_from_reference (fn);
}
