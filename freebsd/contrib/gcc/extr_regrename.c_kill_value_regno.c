
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct value_data {unsigned int max_value_regs; TYPE_1__* e; } ;
struct TYPE_2__ {size_t mode; } ;


 size_t VOIDmode ;
 unsigned int** hard_regno_nregs ;
 int kill_value_one_regno (unsigned int,struct value_data*) ;

__attribute__((used)) static void
kill_value_regno (unsigned int regno, unsigned int nregs,
    struct value_data *vd)
{
  unsigned int j;


  for (j = 0; j < nregs; ++j)
    kill_value_one_regno (regno + j, vd);


  if (regno < vd->max_value_regs)
    j = 0;
  else
    j = regno - vd->max_value_regs;
  for (; j < regno; ++j)
    {
      unsigned int i, n;
      if (vd->e[j].mode == VOIDmode)
 continue;
      n = hard_regno_nregs[j][vd->e[j].mode];
      if (j + n > regno)
 for (i = 0; i < n; ++i)
   kill_value_one_regno (j + i, vd);
    }
}
