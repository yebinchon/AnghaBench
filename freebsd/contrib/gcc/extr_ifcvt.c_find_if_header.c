
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef int ce_info ;
struct TYPE_21__ {int pass; TYPE_3__* test_bb; int else_bb; int then_bb; } ;
typedef TYPE_2__ ce_if_block_t ;
typedef TYPE_3__* basic_block ;
struct TYPE_22__ {int succs; } ;
struct TYPE_20__ {int flags; int dest; } ;


 size_t CDI_POST_DOMINATORS ;
 scalar_t__ DOM_NO_FAST_QUERY ;
 int EDGE_COMPLEX ;
 int EDGE_COUNT (int ) ;
 int EDGE_FALLTHRU ;
 int EDGE_LOOP_EXIT ;
 TYPE_1__* EDGE_SUCC (TYPE_3__*,int) ;
 int HAVE_conditional_execution ;
 scalar_t__ HAVE_conditional_trap ;
 scalar_t__ HAVE_trap ;
 int IFCVT_INIT_EXTRA_FIELDS (TYPE_2__*) ;
 scalar_t__* dom_computed ;
 scalar_t__ dump_file ;
 scalar_t__ find_cond_trap (TYPE_3__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ find_if_block (TYPE_2__*) ;
 scalar_t__ find_if_case_1 (TYPE_3__*,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ find_if_case_2 (TYPE_3__*,TYPE_1__*,TYPE_1__*) ;
 int fprintf (scalar_t__,char*,int) ;
 int memset (TYPE_2__*,char,int) ;
 scalar_t__ reload_completed ;

__attribute__((used)) static basic_block
find_if_header (basic_block test_bb, int pass)
{
  ce_if_block_t ce_info;
  edge then_edge;
  edge else_edge;


  if (EDGE_COUNT (test_bb->succs) != 2)
    return ((void*)0);

  then_edge = EDGE_SUCC (test_bb, 0);
  else_edge = EDGE_SUCC (test_bb, 1);


  if ((then_edge->flags & EDGE_COMPLEX)
      || (else_edge->flags & EDGE_COMPLEX))
    return ((void*)0);


  if ((then_edge->flags & EDGE_LOOP_EXIT)
      || (else_edge->flags & EDGE_LOOP_EXIT))
    return ((void*)0);


  if (then_edge->flags & EDGE_FALLTHRU)
    ;
  else if (else_edge->flags & EDGE_FALLTHRU)
    {
      edge e = else_edge;
      else_edge = then_edge;
      then_edge = e;
    }
  else

    return ((void*)0);

  memset (&ce_info, '\0', sizeof (ce_info));
  ce_info.test_bb = test_bb;
  ce_info.then_bb = then_edge->dest;
  ce_info.else_bb = else_edge->dest;
  ce_info.pass = pass;





  if (find_if_block (&ce_info))
    goto success;

  if (HAVE_trap && HAVE_conditional_trap
      && find_cond_trap (test_bb, then_edge, else_edge))
    goto success;

  if (dom_computed[CDI_POST_DOMINATORS] >= DOM_NO_FAST_QUERY
      && (! HAVE_conditional_execution || reload_completed))
    {
      if (find_if_case_1 (test_bb, then_edge, else_edge))
 goto success;
      if (find_if_case_2 (test_bb, then_edge, else_edge))
 goto success;
    }

  return ((void*)0);

 success:
  if (dump_file)
    fprintf (dump_file, "Conversion succeeded on pass %d.\n", pass);
  return ce_info.test_bb;
}
