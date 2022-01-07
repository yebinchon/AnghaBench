
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ COMPOUND_LITERAL_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int building_stmt_tree () ;
 scalar_t__ error_mark_node ;
 int expand_default_init (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ;
 int finish_expr_stmt (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ store_init_value (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
expand_aggr_init_1 (tree binfo, tree true_exp, tree exp, tree init, int flags)
{
  tree type = TREE_TYPE (exp);

  gcc_assert (init != error_mark_node && type != error_mark_node);
  gcc_assert (building_stmt_tree ());







  if (init && TREE_CODE (exp) == VAR_DECL
      && COMPOUND_LITERAL_P (init))
    {



      init = store_init_value (exp, init);
      if (init)
 finish_expr_stmt (init);
      return;
    }



  expand_default_init (binfo, true_exp, exp, init, flags);
}
