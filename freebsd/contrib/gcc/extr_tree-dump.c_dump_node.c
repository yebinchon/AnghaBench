
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct dump_info {int flags; int nodes; TYPE_1__* free_list; scalar_t__ queue; int node; scalar_t__ queue_end; scalar_t__ column; scalar_t__ index; int * stream; } ;
typedef int splay_tree_delete_value_fn ;
typedef TYPE_1__* dump_queue_p ;
struct TYPE_3__ {struct TYPE_3__* next; } ;
typedef int FILE ;


 int DUMP_NONE ;
 int dequeue_and_dump (struct dump_info*) ;
 int free (TYPE_1__*) ;
 int queue (struct dump_info*,int ,int ) ;
 int splay_tree_compare_pointers ;
 int splay_tree_delete (int ) ;
 int splay_tree_new (int ,int ,int ) ;

void
dump_node (tree t, int flags, FILE *stream)
{
  struct dump_info di;
  dump_queue_p dq;
  dump_queue_p next_dq;


  di.stream = stream;
  di.index = 0;
  di.column = 0;
  di.queue = 0;
  di.queue_end = 0;
  di.free_list = 0;
  di.flags = flags;
  di.node = t;
  di.nodes = splay_tree_new (splay_tree_compare_pointers, 0,
        (splay_tree_delete_value_fn) &free);


  queue (&di, t, DUMP_NONE);


  while (di.queue)
    dequeue_and_dump (&di);


  for (dq = di.free_list; dq; dq = next_dq)
    {
      next_dq = dq->next;
      free (dq);
    }
  splay_tree_delete (di.nodes);
}
