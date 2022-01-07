
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct redirection_data {struct el* incoming_edges; TYPE_3__* outgoing_edge; TYPE_11__* dup_block; } ;
struct local_info {int jumps_threaded; TYPE_7__* bb; } ;
struct el {struct el* next; TYPE_4__* e; } ;
typedef TYPE_4__* edge ;
struct TYPE_24__ {int index; } ;
struct TYPE_23__ {int flags; } ;
struct TYPE_22__ {int num_threaded_edges; } ;
struct TYPE_21__ {TYPE_2__* dest; TYPE_1__* src; scalar_t__ count; int * aux; } ;
struct TYPE_20__ {int dest; } ;
struct TYPE_19__ {int index; } ;
struct TYPE_18__ {int index; } ;
struct TYPE_17__ {int count; } ;
struct TYPE_16__ {int index; int frequency; int count; } ;


 int EDGE_ABNORMAL ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 scalar_t__ EDGE_FREQUENCY (TYPE_4__*) ;
 TYPE_13__* EDGE_SUCC (TYPE_11__*,int ) ;
 int EDGE_TRUE_VALUE ;
 int TDF_DETAILS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int flush_pending_stmts (TYPE_4__*) ;
 int fprintf (scalar_t__,char*,int,...) ;
 int free (struct el*) ;
 TYPE_4__* redirect_edge_and_branch (TYPE_4__*,TYPE_11__*) ;
 int remove_ctrl_stmt_and_useless_edges (TYPE_7__*,int ) ;
 TYPE_6__* single_succ_edge (TYPE_7__*) ;
 TYPE_5__ thread_stats ;

__attribute__((used)) static int
redirect_edges (void **slot, void *data)
{
  struct redirection_data *rd = (struct redirection_data *) *slot;
  struct local_info *local_info = (struct local_info *)data;
  struct el *next, *el;



  for (el = rd->incoming_edges; el; el = next)
    {
      edge e = el->e;




      next = el->next;
      free (el);



      e->aux = ((void*)0);

      thread_stats.num_threaded_edges++;

      if (rd->dup_block)
 {
   edge e2;

   if (dump_file && (dump_flags & TDF_DETAILS))
     fprintf (dump_file, "  Threaded jump %d --> %d to %d\n",
       e->src->index, e->dest->index, rd->dup_block->index);

   rd->dup_block->count += e->count;
   rd->dup_block->frequency += EDGE_FREQUENCY (e);
   EDGE_SUCC (rd->dup_block, 0)->count += e->count;


   e2 = redirect_edge_and_branch (e, rd->dup_block);
   flush_pending_stmts (e2);

   if ((dump_file && (dump_flags & TDF_DETAILS))
       && e->src != e2->src)
     fprintf (dump_file, "    basic block %d created\n", e2->src->index);
 }
      else
 {
   if (dump_file && (dump_flags & TDF_DETAILS))
     fprintf (dump_file, "  Threaded jump %d --> %d to %d\n",
       e->src->index, e->dest->index, local_info->bb->index);



   remove_ctrl_stmt_and_useless_edges (local_info->bb,
           rd->outgoing_edge->dest);


   single_succ_edge (local_info->bb)->flags
     &= ~(EDGE_TRUE_VALUE | EDGE_FALSE_VALUE | EDGE_ABNORMAL);
   single_succ_edge (local_info->bb)->flags |= EDGE_FALLTHRU;
 }
    }


  if (rd->incoming_edges)
    local_info->jumps_threaded = 1;

  return 1;
}
