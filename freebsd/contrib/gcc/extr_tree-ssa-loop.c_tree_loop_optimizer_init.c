
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int dummy; } ;


 int LOOPS_HAVE_MARKED_SINGLE_EXITS ;
 int LOOPS_NORMAL ;
 int TODO_update_ssa ;
 struct loops* loop_optimizer_init (int) ;
 int rewrite_into_loop_closed_ssa (int *,int ) ;

__attribute__((used)) static struct loops *
tree_loop_optimizer_init (void)
{
  struct loops *loops;

  loops = loop_optimizer_init (LOOPS_NORMAL
          | LOOPS_HAVE_MARKED_SINGLE_EXITS);

  if (!loops)
    return ((void*)0);

  rewrite_into_loop_closed_ssa (((void*)0), TODO_update_ssa);

  return loops;
}
