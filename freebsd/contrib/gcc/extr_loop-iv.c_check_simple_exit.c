
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct niter_desc {int simple_p; TYPE_1__* in_edge; TYPE_1__* out_edge; } ;
struct loop {int latch; } ;
typedef int rtx ;
typedef TYPE_1__* edge ;
typedef TYPE_2__* basic_block ;
struct TYPE_9__ {struct loop* loop_father; } ;
struct TYPE_8__ {int flags; TYPE_2__* src; } ;


 int BB_END (TYPE_2__*) ;
 int CDI_DOMINATORS ;
 int EDGE_FALLTHRU ;
 TYPE_1__* EDGE_SUCC (TYPE_2__*,int) ;
 int any_condjump_p (int ) ;
 int dominated_by_p (int ,int ,TYPE_2__*) ;
 int get_condition (int ,int *,int,int) ;
 int iv_number_of_iterations (struct loop*,int ,int ,struct niter_desc*) ;
 int reversed_condition (int ) ;

__attribute__((used)) static void
check_simple_exit (struct loop *loop, edge e, struct niter_desc *desc)
{
  basic_block exit_bb;
  rtx condition, at;
  edge ein;

  exit_bb = e->src;
  desc->simple_p = 0;


  if (exit_bb->loop_father != loop)
    return;


  if (!dominated_by_p (CDI_DOMINATORS, loop->latch, exit_bb))
    return;


  if (!any_condjump_p (BB_END (exit_bb)))
    return;

  ein = EDGE_SUCC (exit_bb, 0);
  if (ein == e)
    ein = EDGE_SUCC (exit_bb, 1);

  desc->out_edge = e;
  desc->in_edge = ein;


  if (!(condition = get_condition (BB_END (ein->src), &at, 0, 0)))
    return;

  if (ein->flags & EDGE_FALLTHRU)
    {
      condition = reversed_condition (condition);
      if (!condition)
 return;
    }



  iv_number_of_iterations (loop, at, condition, desc);
}
