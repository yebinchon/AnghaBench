
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int local_count; } ;
struct equiv_info {int* local_rvalue; scalar_t__ dying_inputs; int x_local_live; int * x_local; TYPE_1__ cur; } ;
typedef int rtx ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 unsigned int REGNO (int ) ;
 scalar_t__ REGNO_REG_SET_P (int ,unsigned int) ;
 int** hard_regno_nregs ;

__attribute__((used)) static void
find_dying_inputs (struct equiv_info *info)
{
  int i;

  info->dying_inputs = 0;
  for (i = info->cur.local_count-1; i >=0; i--)
    {
      rtx x = info->x_local[i];
      unsigned regno = REGNO (x);
      int nregs = (regno >= FIRST_PSEUDO_REGISTER
     ? 1 : hard_regno_nregs[regno][GET_MODE (x)]);

      for (info->local_rvalue[i] = 0; nregs > 0; regno++, --nregs)
 if (REGNO_REG_SET_P (info->x_local_live, regno))
   {
     info->dying_inputs++;
     info->local_rvalue[i] = 1;
     break;
   }
    }
}
