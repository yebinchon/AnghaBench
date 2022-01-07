
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HARD_REG_SET ;


 int CLEAR_HARD_REG_SET (int ) ;
 int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 int GET_MODE_SIZE (scalar_t__) ;
 int MOVE_MAX_WORDS ;
 scalar_t__ REG_N_CALLS_CROSSED (int) ;
 int SET_HARD_REG_BIT (int ,unsigned int) ;
 int TEST_HARD_REG_BIT (int ,int) ;
 int UNITS_PER_WORD ;
 scalar_t__ VOIDmode ;
 scalar_t__ adjust_address_nv (scalar_t__,scalar_t__,int) ;
 scalar_t__ assign_stack_local (scalar_t__,int ,int ) ;
 scalar_t__* call_used_regs ;
 int get_frame_alias_set () ;
 unsigned int** hard_regno_nregs ;
 int max_regno ;
 unsigned int* reg_renumber ;
 int * regno_reg_rtx ;
 scalar_t__** regno_save_mem ;
 scalar_t__** regno_save_mode ;
 int set_mem_alias_set (scalar_t__,int ) ;

void
setup_save_areas (void)
{
  int i, j, k;
  unsigned int r;
  HARD_REG_SET hard_regs_used;






  CLEAR_HARD_REG_SET (hard_regs_used);
  for (i = FIRST_PSEUDO_REGISTER; i < max_regno; i++)
    if (reg_renumber[i] >= 0 && REG_N_CALLS_CROSSED (i) > 0)
      {
 unsigned int regno = reg_renumber[i];
 unsigned int endregno
   = regno + hard_regno_nregs[regno][GET_MODE (regno_reg_rtx[i])];

 for (r = regno; r < endregno; r++)
   if (call_used_regs[r])
     SET_HARD_REG_BIT (hard_regs_used, r);
      }





  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (j = MOVE_MAX_WORDS; j > 0; j--)
      {
 int do_save = 1;



 if (regno_save_mode[i][j] == VOIDmode || regno_save_mem[i][1] != 0)
   continue;


 for (k = 0; k < j; k++)
   if (regno_save_mem[i + k][1])
     {
       do_save = 0;
       break;
     }
 if (! do_save)
   continue;

 for (k = 0; k < j; k++)
   if (! TEST_HARD_REG_BIT (hard_regs_used, i + k))
     {
       do_save = 0;
       break;
     }
 if (! do_save)
   continue;


 regno_save_mem[i][j]
   = assign_stack_local (regno_save_mode[i][j],
    GET_MODE_SIZE (regno_save_mode[i][j]), 0);


 for (k = 0; k < j; k++)


   regno_save_mem[i + k][1]
     = adjust_address_nv (regno_save_mem[i][j],
     regno_save_mode[i + k][1],
     k * UNITS_PER_WORD);
      }



  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (j = MOVE_MAX_WORDS; j > 0; j--)
      if (regno_save_mem[i][j] != 0)
 set_mem_alias_set (regno_save_mem[i][j], get_frame_alias_set ());
}
