
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct convert_optab {int dummy; } ;
typedef TYPE_2__* convert_optab ;
struct TYPE_6__ {TYPE_1__** handlers; } ;
struct TYPE_5__ {scalar_t__ libfunc; int insn_code; } ;


 int CODE_FOR_nothing ;
 int NUM_MACHINE_MODES ;
 TYPE_2__* ggc_alloc (int) ;

__attribute__((used)) static convert_optab
new_convert_optab (void)
{
  int i, j;
  convert_optab op = ggc_alloc (sizeof (struct convert_optab));
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    for (j = 0; j < NUM_MACHINE_MODES; j++)
      {
 op->handlers[i][j].insn_code = CODE_FOR_nothing;
 op->handlers[i][j].libfunc = 0;
      }
  return op;
}
