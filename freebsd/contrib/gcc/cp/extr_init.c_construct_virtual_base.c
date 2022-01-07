
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ARGUMENTS (int ) ;
 int LOOKUP_COMPLAIN ;
 int TREE_CHAIN (int ) ;
 int begin_if_stmt () ;
 int convert_to_base_statically (int ,int ) ;
 int current_class_ref ;
 int current_function_decl ;
 int expand_aggr_init_1 (int ,int ,int ,int ,int ) ;
 int expand_cleanup_for_base (int ,int ) ;
 int finish_if_stmt (int ) ;
 int finish_if_stmt_cond (int ,int ) ;
 int finish_then_clause (int ) ;

__attribute__((used)) static void
construct_virtual_base (tree vbase, tree arguments)
{
  tree inner_if_stmt;
  tree exp;
  tree flag;
  flag = TREE_CHAIN (DECL_ARGUMENTS (current_function_decl));
  inner_if_stmt = begin_if_stmt ();
  finish_if_stmt_cond (flag, inner_if_stmt);





  exp = convert_to_base_statically (current_class_ref, vbase);

  expand_aggr_init_1 (vbase, current_class_ref, exp, arguments,
        LOOKUP_COMPLAIN);
  finish_then_clause (inner_if_stmt);
  finish_if_stmt (inner_if_stmt);

  expand_cleanup_for_base (vbase, flag);
}
