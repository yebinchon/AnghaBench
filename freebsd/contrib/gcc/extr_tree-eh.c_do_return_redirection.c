
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
struct goto_queue_node {int repl_stmt; void* stmt; void* cont_stmt; } ;


 int GOTO_EXPR ;


 int RETURN_EXPR ;
 int TREE_CODE (void*) ;
 void* TREE_OPERAND (void*,int) ;
 int TREE_TYPE (void*) ;
 int aggregate_value_p (int ,int ) ;
 int append_to_statement_list (void*,int *) ;
 void* build1 (int ,int ,void*) ;
 void* build2 (int const,int ,void*,void*) ;
 void* create_tmp_var (int ,char*) ;
 void* current_function_decl ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int void_type_node ;

__attribute__((used)) static void
do_return_redirection (struct goto_queue_node *q, tree finlab, tree mod,
         tree *return_value_p)
{
  tree ret_expr = TREE_OPERAND (q->stmt, 0);
  tree x;

  if (ret_expr)
    {
      switch (TREE_CODE (ret_expr))
 {
 case 128:
   if (!*return_value_p)
     *return_value_p = ret_expr;
   else
     gcc_assert (*return_value_p == ret_expr);
   q->cont_stmt = q->stmt;
   break;

 case 129:
   {
     tree result = TREE_OPERAND (ret_expr, 0);
     tree new, old = TREE_OPERAND (ret_expr, 1);

     if (!*return_value_p)
       {
  if (aggregate_value_p (TREE_TYPE (result),
          TREE_TYPE (current_function_decl)))





    new = result;
  else
    new = create_tmp_var (TREE_TYPE (old), "rettmp");
  *return_value_p = new;
       }
     else
       new = *return_value_p;

     x = build2 (129, TREE_TYPE (new), new, old);
     append_to_statement_list (x, &q->repl_stmt);

     if (new == result)
       x = result;
     else
       x = build2 (129, TREE_TYPE (result), result, new);
     q->cont_stmt = build1 (RETURN_EXPR, void_type_node, x);
   }

 default:
   gcc_unreachable ();
 }
    }
  else
    {

      q->cont_stmt = q->stmt;
    }

  if (mod)
    append_to_statement_list (mod, &q->repl_stmt);

  x = build1 (GOTO_EXPR, void_type_node, finlab);
  append_to_statement_list (x, &q->repl_stmt);
}
