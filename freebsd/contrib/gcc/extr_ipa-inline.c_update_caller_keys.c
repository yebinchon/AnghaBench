
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int inlinable; scalar_t__ disregard_inline_limits; } ;
struct TYPE_7__ {int estimated_growth; scalar_t__ inlined_to; } ;
struct cgraph_node {struct cgraph_edge* callers; TYPE_2__ local; TYPE_1__ global; int uid; } ;
struct cgraph_edge {char const* inline_failed; TYPE_3__* aux; struct cgraph_edge* next_caller; } ;
typedef TYPE_3__* fibnode_t ;
typedef int fibheap_t ;
typedef int bitmap ;
struct TYPE_9__ {int key; struct cgraph_edge* data; } ;


 int INT_MIN ;
 scalar_t__ bitmap_bit_p (int ,int ) ;
 int bitmap_set_bit (int ,int ) ;
 int cgraph_default_inline_p (struct cgraph_node*,char const**) ;
 int cgraph_edge_badness (struct cgraph_edge*) ;
 int fibheap_delete_node (int ,TYPE_3__*) ;
 TYPE_3__* fibheap_insert (int ,int,struct cgraph_edge*) ;
 scalar_t__ fibheap_replace_key (int ,TYPE_3__*,int) ;
 int gcc_assert (int) ;

__attribute__((used)) static void
update_caller_keys (fibheap_t heap, struct cgraph_node *node,
      bitmap updated_nodes)
{
  struct cgraph_edge *edge;
  const char *failed_reason;

  if (!node->local.inlinable || node->local.disregard_inline_limits
      || node->global.inlined_to)
    return;
  if (bitmap_bit_p (updated_nodes, node->uid))
    return;
  bitmap_set_bit (updated_nodes, node->uid);
  node->global.estimated_growth = INT_MIN;

  if (!node->local.inlinable)
    return;

  if (!cgraph_default_inline_p (node, &failed_reason))
    {
      for (edge = node->callers; edge; edge = edge->next_caller)
 if (edge->aux)
   {
     fibheap_delete_node (heap, edge->aux);
     edge->aux = ((void*)0);
     if (edge->inline_failed)
       edge->inline_failed = failed_reason;
   }
      return;
    }

  for (edge = node->callers; edge; edge = edge->next_caller)
    if (edge->inline_failed)
      {
 int badness = cgraph_edge_badness (edge);
 if (edge->aux)
   {
     fibnode_t n = edge->aux;
     gcc_assert (n->data == edge);
     if (n->key == badness)
       continue;


     if (fibheap_replace_key (heap, n, badness))
       continue;
     fibheap_delete_node (heap, edge->aux);
   }
 edge->aux = fibheap_insert (heap, badness, edge);
      }
}
