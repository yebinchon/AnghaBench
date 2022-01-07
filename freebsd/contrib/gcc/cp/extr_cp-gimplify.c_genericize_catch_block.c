
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CATCH_EXPR ;
 int HANDLER_BODY (int ) ;
 int HANDLER_TYPE (int ) ;
 int build2 (int ,int ,int ,int ) ;
 int gimplify_stmt (int *) ;
 int void_type_node ;

__attribute__((used)) static void
genericize_catch_block (tree *stmt_p)
{
  tree type = HANDLER_TYPE (*stmt_p);
  tree body = HANDLER_BODY (*stmt_p);

  gimplify_stmt (&body);


  *stmt_p = build2 (CATCH_EXPR, void_type_node, type, body);
}
