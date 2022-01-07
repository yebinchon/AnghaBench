
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct leh_tf_state {int goto_queue_active; void** top_p; struct goto_queue_node* goto_queue; int * eh_label; scalar_t__ may_throw; } ;
struct leh_state {int dummy; } ;
struct goto_queue_node {scalar_t__ index; } ;


 int LABEL_EXPR ;
 void* TREE_OPERAND (void*,int) ;
 int append_to_statement_list (int *,void**) ;
 int * build1 (int ,int ,int *) ;
 int * create_artificial_label () ;
 int do_goto_redirection (struct goto_queue_node*,int *,int *) ;
 int do_return_redirection (struct goto_queue_node*,int *,int *,int **) ;
 int lower_eh_constructs_1 (struct leh_state*,int **) ;
 int replace_goto_queue (struct leh_tf_state*) ;
 int void_type_node ;

__attribute__((used)) static void
lower_try_finally_nofallthru (struct leh_state *state, struct leh_tf_state *tf)
{
  tree x, finally, lab, return_val;
  struct goto_queue_node *q, *qe;

  if (tf->may_throw)
    lab = tf->eh_label;
  else
    lab = create_artificial_label ();

  finally = TREE_OPERAND (*tf->top_p, 1);
  *tf->top_p = TREE_OPERAND (*tf->top_p, 0);

  x = build1 (LABEL_EXPR, void_type_node, lab);
  append_to_statement_list (x, tf->top_p);

  return_val = ((void*)0);
  q = tf->goto_queue;
  qe = q + tf->goto_queue_active;
  for (; q < qe; ++q)
    if (q->index < 0)
      do_return_redirection (q, lab, ((void*)0), &return_val);
    else
      do_goto_redirection (q, lab, ((void*)0));

  replace_goto_queue (tf);

  lower_eh_constructs_1 (state, &finally);
  append_to_statement_list (finally, tf->top_p);
}
