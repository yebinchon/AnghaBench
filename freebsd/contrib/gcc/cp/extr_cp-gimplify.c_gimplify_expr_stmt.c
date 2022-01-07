
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;


 int * EXPR_STMT_EXPR (int *) ;
 int IS_EMPTY_STMT (int *) ;
 int * NULL_TREE ;
 int OPT_Wextra ;
 int TREE_NO_WARNING (int *) ;
 int TREE_SIDE_EFFECTS (int *) ;
 int TREE_TYPE (int *) ;
 int VOID_TYPE_P (int ) ;
 int * alloc_stmt_list () ;
 int * error_mark_node ;
 scalar_t__ extra_warnings ;
 int input_location ;
 int warn_if_unused_value (int *,int ) ;
 scalar_t__ warn_unused_value ;
 int warning (int ,char*) ;

__attribute__((used)) static void
gimplify_expr_stmt (tree *stmt_p)
{
  tree stmt = EXPR_STMT_EXPR (*stmt_p);

  if (stmt == error_mark_node)
    stmt = ((void*)0);







  if (stmt && (extra_warnings || warn_unused_value))
    {
      if (!TREE_SIDE_EFFECTS (stmt))
 {
   if (!IS_EMPTY_STMT (stmt)
       && !VOID_TYPE_P (TREE_TYPE (stmt))
       && !TREE_NO_WARNING (stmt))
     warning (OPT_Wextra, "statement with no effect");
 }
      else if (warn_unused_value)
 warn_if_unused_value (stmt, input_location);
    }

  if (stmt == NULL_TREE)
    stmt = alloc_stmt_list ();

  *stmt_p = stmt;
}
