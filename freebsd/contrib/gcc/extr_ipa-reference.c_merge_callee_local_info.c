
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ipa_dfs_info {struct cgraph_node* aux; } ;
struct TYPE_5__ {scalar_t__ inlined_to; } ;
struct cgraph_node {TYPE_1__ global; struct cgraph_edge* callees; struct ipa_dfs_info* aux; } ;
struct cgraph_edge {struct cgraph_node* callee; struct cgraph_edge* next_callee; } ;
typedef TYPE_2__* ipa_reference_vars_info_t ;
typedef TYPE_3__* ipa_reference_local_vars_info_t ;
struct TYPE_7__ {int calls_write_all; int calls_read_all; int statics_written; int statics_read; } ;
struct TYPE_6__ {TYPE_3__* local; } ;


 int bitmap_ior_into (int ,int ) ;
 struct cgraph_node* cgraph_master_clone (struct cgraph_node*) ;
 int dump_cgraph (int ) ;
 int dump_cgraph_node (int ,struct cgraph_node*) ;
 int fprintf (int ,char*) ;
 int gcc_assert (int) ;
 TYPE_2__* get_reference_vars_info_from_cgraph (struct cgraph_node*) ;
 int stderr ;

__attribute__((used)) static void
merge_callee_local_info (struct cgraph_node *target,
    struct cgraph_node *x)
{
  struct cgraph_edge *e;
  ipa_reference_local_vars_info_t x_l =
    get_reference_vars_info_from_cgraph (target)->local;


  struct ipa_dfs_info *node_info = x->aux;

  if (node_info->aux)
    return;

  node_info->aux = x;

  for (e = x->callees; e; e = e->next_callee)
    {
      struct cgraph_node *y = e->callee;
      if (y->global.inlined_to)
 {
   ipa_reference_vars_info_t y_info;
   ipa_reference_local_vars_info_t y_l;
   struct cgraph_node* orig_y = y;

   y = cgraph_master_clone (y);
   if (y)
     {
       y_info = get_reference_vars_info_from_cgraph (y);
       y_l = y_info->local;
       if (x_l != y_l)
  {
    bitmap_ior_into (x_l->statics_read,
       y_l->statics_read);
    bitmap_ior_into (x_l->statics_written,
       y_l->statics_written);
  }
       x_l->calls_read_all |= y_l->calls_read_all;
       x_l->calls_write_all |= y_l->calls_write_all;
       merge_callee_local_info (target, y);
     }
   else
     {
       fprintf(stderr, "suspect inlining of ");
       dump_cgraph_node (stderr, orig_y);
       fprintf(stderr, "\ninto ");
       dump_cgraph_node (stderr, target);
       dump_cgraph (stderr);
       gcc_assert(0);
     }
 }
    }

  node_info->aux = ((void*)0);
}
