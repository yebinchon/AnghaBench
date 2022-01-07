
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* cdtor_returns_this ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int BIT_AND_EXPR ;
 int DECL_ARGUMENTS (int ) ;
 int DECL_RESULT (int ) ;
 scalar_t__ DECL_VIRTUAL_P (int ) ;
 int DELETE_EXPR ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int NULL_TREE ;
 int RETURN_EXPR ;
 int TREE_TYPE (int ) ;
 int add_stmt (int ) ;
 int begin_if_stmt () ;
 int build2 (int ,int ,int ,int ) ;
 int build_op_delete_call (int ,int ,int ,int,int ,int ) ;
 int build_stmt (int ,int ) ;
 int cdtor_label ;
 int current_class_ptr ;
 int current_class_type ;
 int current_function_decl ;
 int current_in_charge_parm ;
 int cxx_sizeof (int ) ;
 int finish_expr_stmt (int ) ;
 int finish_if_stmt (int ) ;
 int finish_if_stmt_cond (int ,int ) ;
 int finish_then_clause (int ) ;
 int integer_one_node ;
 int integer_type_node ;
 scalar_t__ stub1 () ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
finish_destructor_body (void)
{
  tree exprstmt;



  add_stmt (build_stmt (LABEL_EXPR, cdtor_label));


  if (DECL_VIRTUAL_P (current_function_decl))
    {
      tree if_stmt;
      tree virtual_size = cxx_sizeof (current_class_type);







      exprstmt = build_op_delete_call(DELETE_EXPR, current_class_ptr,
          virtual_size,
                       0,
                        NULL_TREE,
                       NULL_TREE);

      if_stmt = begin_if_stmt ();
      finish_if_stmt_cond (build2 (BIT_AND_EXPR, integer_type_node,
       current_in_charge_parm,
       integer_one_node),
      if_stmt);
      finish_expr_stmt (exprstmt);
      finish_then_clause (if_stmt);
      finish_if_stmt (if_stmt);
    }

  if (targetm.cxx.cdtor_returns_this ())
    {
      tree val;

      val = DECL_ARGUMENTS (current_function_decl);
      val = build2 (MODIFY_EXPR, TREE_TYPE (val),
      DECL_RESULT (current_function_decl), val);

      exprstmt = build_stmt (RETURN_EXPR, val);
      add_stmt (exprstmt);
    }
}
