
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_20__ {int lines_executed; int lines; } ;
struct TYPE_15__ {unsigned int num_lines; TYPE_9__ coverage; TYPE_5__* lines; TYPE_6__* functions; } ;
typedef TYPE_4__ source_t ;
struct TYPE_12__ {TYPE_7__* blocks; TYPE_8__* branches; } ;
struct TYPE_16__ {scalar_t__ count; scalar_t__ exists; TYPE_1__ u; } ;
typedef TYPE_5__ line_t ;
typedef scalar_t__ gcov_type ;
struct TYPE_17__ {struct TYPE_17__* line_next; } ;
typedef TYPE_6__ function_t ;
struct TYPE_13__ {unsigned int ident; TYPE_8__* arc; } ;
struct TYPE_14__ {TYPE_2__ cycle; } ;
struct TYPE_18__ {TYPE_3__ u; TYPE_8__* succ; struct TYPE_18__* chain; TYPE_8__* pred; } ;
typedef TYPE_7__ block_t ;
struct TYPE_19__ {scalar_t__ count; scalar_t__ cs_count; int cycle; struct TYPE_19__* succ_next; TYPE_7__* src; TYPE_7__* dst; struct TYPE_19__* pred_next; struct TYPE_19__* line_next; } ;
typedef TYPE_8__ arc_t ;


 int add_branch_counts (TYPE_9__*,TYPE_8__*) ;
 int flag_all_blocks ;
 scalar_t__ flag_branches ;

__attribute__((used)) static void
accumulate_line_counts (source_t *src)
{
  line_t *line;
  function_t *fn, *fn_p, *fn_n;
  unsigned ix;


  for (fn = src->functions, fn_p = ((void*)0); fn;
       fn_p = fn, fn = fn_n)
    {
      fn_n = fn->line_next;
      fn->line_next = fn_p;
    }
  src->functions = fn_p;

  for (ix = src->num_lines, line = src->lines; ix--; line++)
    {
      if (!flag_all_blocks)
 {
   arc_t *arc, *arc_p, *arc_n;


   for (arc = line->u.branches, arc_p = ((void*)0); arc;
        arc_p = arc, arc = arc_n)
     {
       arc_n = arc->line_next;
       arc->line_next = arc_p;

       add_branch_counts (&src->coverage, arc);
     }
   line->u.branches = arc_p;
 }
      else if (line->u.blocks)
 {






   block_t *block, *block_p, *block_n;
   gcov_type count = 0;


   for (block = line->u.blocks, block_p = ((void*)0); block;
        block_p = block, block = block_n)
     {
       block_n = block->chain;
       block->chain = block_p;
       block->u.cycle.ident = ix;
     }
   line->u.blocks = block_p;


   for (block = line->u.blocks; block; block = block->chain)
     {
       arc_t *arc;

       for (arc = block->pred; arc; arc = arc->pred_next)
  {
    if (arc->src->u.cycle.ident != ix)
      count += arc->count;
    if (flag_branches)
      add_branch_counts (&src->coverage, arc);
  }


       for (arc = block->succ; arc; arc = arc->succ_next)
  arc->cs_count = arc->count;
     }
   for (block = line->u.blocks; block; block = block->chain)
     {
       block_t *head = block;
       arc_t *arc;

     next_vertex:;
       arc = head->succ;
     current_vertex:;
       while (arc)
  {
    block_t *dst = arc->dst;
    if (
        arc->cycle

        || dst->u.cycle.ident != ix

        || dst->u.cycle.arc)
      {
        arc = arc->succ_next;
        continue;
      }

    if (dst == block)
      {

        gcov_type cycle_count = arc->cs_count;
        arc_t *cycle_arc = arc;
        arc_t *probe_arc;


        for (dst = head; (probe_arc = dst->u.cycle.arc);
      dst = probe_arc->src)
   if (cycle_count > probe_arc->cs_count)
     {
       cycle_count = probe_arc->cs_count;
       cycle_arc = probe_arc;
     }

        count += cycle_count;
        cycle_arc->cycle = 1;


        arc->cs_count -= cycle_count;
        for (dst = head; (probe_arc = dst->u.cycle.arc);
      dst = probe_arc->src)
   probe_arc->cs_count -= cycle_count;


        while (head != cycle_arc->src)
   {
     arc = head->u.cycle.arc;
     head->u.cycle.arc = ((void*)0);
     head = arc->src;
   }

        arc = arc->succ_next;
        continue;
      }


    dst->u.cycle.arc = arc;
    head = dst;
    goto next_vertex;
  }


       arc = head->u.cycle.arc;
       if (arc)
  {

    head->u.cycle.arc = ((void*)0);
    head = arc->src;
    arc = arc->succ_next;
    goto current_vertex;
  }

       block->u.cycle.ident = ~0U;
     }

   line->count = count;
 }

      if (line->exists)
 {
   src->coverage.lines++;
   if (line->count)
     src->coverage.lines_executed++;
 }
    }
}
