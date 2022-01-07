
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct goto_queue_node {int repl_stmt; int stmt; int cont_stmt; } ;


 int GOTO_EXPR ;
 int append_to_statement_list (scalar_t__,int *) ;
 scalar_t__ build1 (int ,int ,scalar_t__) ;
 int void_type_node ;

__attribute__((used)) static void
do_goto_redirection (struct goto_queue_node *q, tree finlab, tree mod)
{
  tree x;

  q->cont_stmt = q->stmt;
  if (mod)
    append_to_statement_list (mod, &q->repl_stmt);

  x = build1 (GOTO_EXPR, void_type_node, finlab);
  append_to_statement_list (x, &q->repl_stmt);
}
