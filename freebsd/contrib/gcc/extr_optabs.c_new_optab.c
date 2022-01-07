
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct optab {int dummy; } ;
typedef TYPE_2__* optab ;
struct TYPE_6__ {TYPE_1__* handlers; } ;
struct TYPE_5__ {scalar_t__ libfunc; int insn_code; } ;


 int CODE_FOR_nothing ;
 int NUM_MACHINE_MODES ;
 TYPE_2__* ggc_alloc (int) ;

__attribute__((used)) static optab
new_optab (void)
{
  int i;
  optab op = ggc_alloc (sizeof (struct optab));
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    {
      op->handlers[i].insn_code = CODE_FOR_nothing;
      op->handlers[i].libfunc = 0;
    }

  return op;
}
