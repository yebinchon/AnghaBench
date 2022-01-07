
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cond_node {int false_list; int true_list; struct cond_node* next; struct cond_node* expr; } ;
struct cond_expr {int false_list; int true_list; struct cond_expr* next; struct cond_expr* expr; } ;


 int cond_av_list_destroy (int ) ;
 int kfree (struct cond_node*) ;

__attribute__((used)) static void cond_node_destroy(struct cond_node *node)
{
 struct cond_expr *cur_expr, *next_expr;

 for (cur_expr = node->expr; cur_expr; cur_expr = next_expr) {
  next_expr = cur_expr->next;
  kfree(cur_expr);
 }
 cond_av_list_destroy(node->true_list);
 cond_av_list_destroy(node->false_list);
 kfree(node);
}
