
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct searchc_env {scalar_t__ count; size_t stack_size; int order_pos; struct cgraph_node** result; scalar_t__ reduce; struct cgraph_node** stack; int nodes_marked_new; } ;
struct ipa_dfs_info {int new; scalar_t__ dfn_number; scalar_t__ low_link; int on_stack; struct cgraph_node* next_cycle; } ;
struct cgraph_node {struct ipa_dfs_info* aux; struct cgraph_edge* callees; int uid; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_edge* next_callee; } ;


 struct cgraph_node* cgraph_master_clone (struct cgraph_node*) ;
 int splay_tree_remove (int ,int ) ;

__attribute__((used)) static void
searchc (struct searchc_env* env, struct cgraph_node *v)
{
  struct cgraph_edge *edge;
  struct ipa_dfs_info *v_info = v->aux;


  v_info->new = 0;
  splay_tree_remove (env->nodes_marked_new, v->uid);

  v_info->dfn_number = env->count;
  v_info->low_link = env->count;
  env->count++;
  env->stack[(env->stack_size)++] = v;
  v_info->on_stack = 1;

  for (edge = v->callees; edge; edge = edge->next_callee)
    {
      struct ipa_dfs_info * w_info;
      struct cgraph_node *w = edge->callee;


      w = cgraph_master_clone (w);
      if (w && w->aux)
 {
   w_info = w->aux;
   if (w_info->new)
     {
       searchc (env, w);
       v_info->low_link =
  (v_info->low_link < w_info->low_link) ?
  v_info->low_link : w_info->low_link;
     }
   else
     if ((w_info->dfn_number < v_info->dfn_number)
  && (w_info->on_stack))
       v_info->low_link =
  (w_info->dfn_number < v_info->low_link) ?
  w_info->dfn_number : v_info->low_link;
 }
    }


  if (v_info->low_link == v_info->dfn_number)
    {
      struct cgraph_node *last = ((void*)0);
      struct cgraph_node *x;
      struct ipa_dfs_info *x_info;
      do {
 x = env->stack[--(env->stack_size)];
 x_info = x->aux;
 x_info->on_stack = 0;

 if (env->reduce)
   {
     x_info->next_cycle = last;
     last = x;
   }
 else
   env->result[env->order_pos++] = x;
      }
      while (v != x);
      if (env->reduce)
 env->result[env->order_pos++] = v;
    }
}
