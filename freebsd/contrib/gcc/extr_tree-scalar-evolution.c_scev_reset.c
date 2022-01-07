
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loop {int nb_iterations; } ;
struct TYPE_2__ {unsigned int num; struct loop** parray; } ;


 int NULL_TREE ;
 TYPE_1__* current_loops ;
 int htab_empty (int ) ;
 int scalar_evolution_info ;

void
scev_reset (void)
{
  unsigned i;
  struct loop *loop;

  if (!scalar_evolution_info || !current_loops)
    return;

  htab_empty (scalar_evolution_info);
  for (i = 1; i < current_loops->num; i++)
    {
      loop = current_loops->parray[i];
      if (loop)
 loop->nb_iterations = NULL_TREE;
    }
}
