
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct leh_tf_state {scalar_t__ goto_queue_active; int * top_p; } ;


 int replace_goto_queue_stmt_list (int ,struct leh_tf_state*) ;

__attribute__((used)) static void
replace_goto_queue (struct leh_tf_state *tf)
{
  if (tf->goto_queue_active == 0)
    return;
  replace_goto_queue_stmt_list (*tf->top_p, tf);
}
