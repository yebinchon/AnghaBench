
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_stmt_iterator ;
typedef int tree ;
struct leh_tf_state {int dummy; } ;


 int replace_goto_queue_1 (int ,struct leh_tf_state*,int *) ;
 int tsi_end_p (int ) ;
 int tsi_start (int ) ;
 int tsi_stmt (int ) ;

__attribute__((used)) static void
replace_goto_queue_stmt_list (tree t, struct leh_tf_state *tf)
{
  tree_stmt_iterator i = tsi_start (t);
  while (!tsi_end_p (i))
    replace_goto_queue_1 (tsi_stmt (i), tf, &i);
}
