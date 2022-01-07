
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* use_aeabi_atexit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int ADDR_EXPR ;
 int BCS_FN_BODY ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_HAS_TRIVIAL_DESTRUCTOR (int ) ;
 int begin_compound_stmt (int ) ;
 int build_cleanup (int ) ;
 int build_function_call (int ,int ) ;
 int build_unary_op (int ,int ,int ) ;
 int cxx_mark_addressable (int ) ;
 int dk_no_check ;
 int end_cleanup_fn () ;
 int finish_compound_stmt (int ) ;
 int finish_expr_stmt (int ) ;
 scalar_t__ flag_use_cxa_atexit ;
 int get_atexit_node () ;
 int get_dso_handle_node () ;
 int mark_used (int ) ;
 int null_pointer_node ;
 int pop_deferring_access_checks () ;
 int push_deferring_access_checks (int ) ;
 int start_cleanup_fn () ;
 scalar_t__ stub1 () ;
 TYPE_2__ targetm ;
 int tree_cons (int ,int ,int ) ;
 int void_zero_node ;

tree
register_dtor_fn (tree decl)
{
  tree cleanup;
  tree compound_stmt;
  tree args;
  tree fcall;

  if (TYPE_HAS_TRIVIAL_DESTRUCTOR (TREE_TYPE (decl)))
    return void_zero_node;




  build_cleanup (decl);


  cleanup = start_cleanup_fn ();






  push_deferring_access_checks (dk_no_check);
  fcall = build_cleanup (decl);
  pop_deferring_access_checks ();


  compound_stmt = begin_compound_stmt (BCS_FN_BODY);
  finish_expr_stmt (fcall);
  finish_compound_stmt (compound_stmt);
  end_cleanup_fn ();


  cxx_mark_addressable (cleanup);
  mark_used (cleanup);
  cleanup = build_unary_op (ADDR_EXPR, cleanup, 0);
  if (flag_use_cxa_atexit)
    {
      args = tree_cons (NULL_TREE,
   build_unary_op (ADDR_EXPR, get_dso_handle_node (), 0),
   NULL_TREE);
      if (targetm.cxx.use_aeabi_atexit ())
 {
   args = tree_cons (NULL_TREE, cleanup, args);
   args = tree_cons (NULL_TREE, null_pointer_node, args);
 }
      else
 {
   args = tree_cons (NULL_TREE, null_pointer_node, args);
   args = tree_cons (NULL_TREE, cleanup, args);
 }
    }
  else
    args = tree_cons (NULL_TREE, cleanup, NULL_TREE);
  return build_function_call (get_atexit_node (), args);
}
