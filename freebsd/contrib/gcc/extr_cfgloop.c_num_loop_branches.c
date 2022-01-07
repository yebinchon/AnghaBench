
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct loop {scalar_t__ latch; unsigned int num_nodes; } ;
typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int succs; } ;


 int EDGE_COUNT (int ) ;
 scalar_t__ EXIT_BLOCK_PTR ;
 int free (TYPE_1__**) ;
 int gcc_assert (int) ;
 TYPE_1__** get_loop_body (struct loop const*) ;

unsigned
num_loop_branches (const struct loop *loop)
{
  unsigned i, n;
  basic_block * body;

  gcc_assert (loop->latch != EXIT_BLOCK_PTR);

  body = get_loop_body (loop);
  n = 0;
  for (i = 0; i < loop->num_nodes; i++)
    if (EDGE_COUNT (body[i]->succs) >= 2)
      n++;
  free (body);

  return n;
}
