
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEAR_HARD_REG_SET (int ) ;
 int FIRST_PSEUDO_REGISTER ;
 int N_REG_CLASSES ;
 int SET_HARD_REG_BIT (int ,int) ;
 int call_used_regs ;
 int fixed_regs ;
 int gcc_assert (int) ;
 int global_regs ;
 int initial_call_used_regs ;
 int initial_fixed_regs ;
 unsigned int** int_reg_class_contents ;
 int* inv_reg_alloc_order ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 size_t* reg_alloc_order ;
 int * reg_class_contents ;

void
init_reg_sets (void)
{
  int i, j;




  for (i = 0; i < N_REG_CLASSES; i++)
    {
      CLEAR_HARD_REG_SET (reg_class_contents[i]);


      for (j = 0; j < FIRST_PSEUDO_REGISTER; j++)
 if (int_reg_class_contents[i][j / 32]
     & ((unsigned) 1 << (j % 32)))
   SET_HARD_REG_BIT (reg_class_contents[i], j);
    }



  gcc_assert (sizeof fixed_regs == sizeof initial_fixed_regs);
  gcc_assert (sizeof call_used_regs == sizeof initial_call_used_regs);

  memcpy (fixed_regs, initial_fixed_regs, sizeof fixed_regs);
  memcpy (call_used_regs, initial_call_used_regs, sizeof call_used_regs);
  memset (global_regs, 0, sizeof global_regs);





}
