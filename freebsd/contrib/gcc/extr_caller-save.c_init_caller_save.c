
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REGNO ;
typedef int INSN_CODE ;


 int CONST_INT ;
 int FIRST_PSEUDO_REGISTER ;
 int GEN_INT (int) ;
 size_t HARD_REGNO_CALLER_SAVE_MODE (int,int,size_t) ;
 scalar_t__ HARD_REGNO_MODE_OK (int,int) ;
 int HOST_BITS_PER_INT ;
 int MAX_MACHINE_MODE ;
 int MOVE_MAX_WORDS ;
 int PLUS ;
 int PUT_MODE (int,int) ;
 size_t Pmode ;
 int SET_HARD_REG_BIT (int ,int) ;
 scalar_t__ TEST_HARD_REG_BIT (int ,int) ;
 size_t VOIDmode ;
 scalar_t__ base_reg_class (size_t,int ,int ) ;
 int call_fixed_reg_set ;
 int* call_fixed_regs ;
 scalar_t__* call_used_regs ;
 int constrain_operands (int) ;
 int extract_insn (int) ;
 int gcc_assert (int) ;
 int gen_rtx_INSN (size_t,int ,int ,int ,int ,int ,int,int,int ,int ) ;
 int gen_rtx_MEM (size_t,int) ;
 int gen_rtx_PLUS (size_t,int,int ) ;
 int gen_rtx_REG (size_t,int) ;
 int gen_rtx_SET (size_t,int,int) ;
 int recog_memoized (int) ;
 int * reg_class_contents ;
 int** reg_restore_code ;
 int** reg_save_code ;
 size_t** regno_save_mode ;
 int strict_memory_address_p (size_t,int) ;

void
init_caller_save (void)
{
  rtx addr_reg;
  int offset;
  rtx address;
  int i, j;
  enum machine_mode mode;
  rtx savepat, restpat;
  rtx test_reg, test_mem;
  rtx saveinsn, restinsn;





  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {
      if (call_used_regs[i] && ! call_fixed_regs[i])
 {
   for (j = 1; j <= MOVE_MAX_WORDS; j++)
     {
       regno_save_mode[i][j] = HARD_REGNO_CALLER_SAVE_MODE (i, j,
           VOIDmode);
       if (regno_save_mode[i][j] == VOIDmode && j == 1)
  {
    call_fixed_regs[i] = 1;
    SET_HARD_REG_BIT (call_fixed_reg_set, i);
  }
     }
 }
      else
 regno_save_mode[i][1] = VOIDmode;
    }
  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (TEST_HARD_REG_BIT
 (reg_class_contents
  [(int) base_reg_class (regno_save_mode [i][1], PLUS, CONST_INT)], i))
      break;

  gcc_assert (i < FIRST_PSEUDO_REGISTER);

  addr_reg = gen_rtx_REG (Pmode, i);

  for (offset = 1 << (HOST_BITS_PER_INT / 2); offset; offset >>= 1)
    {
      address = gen_rtx_PLUS (Pmode, addr_reg, GEN_INT (offset));

      for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
 if (regno_save_mode[i][1] != VOIDmode
   && ! strict_memory_address_p (regno_save_mode[i][1], address))
   break;

      if (i == FIRST_PSEUDO_REGISTER)
 break;
    }


  if (offset == 0)
    address = addr_reg;







  test_reg = gen_rtx_REG (VOIDmode, 0);
  test_mem = gen_rtx_MEM (VOIDmode, address);
  savepat = gen_rtx_SET (VOIDmode, test_mem, test_reg);
  restpat = gen_rtx_SET (VOIDmode, test_reg, test_mem);

  saveinsn = gen_rtx_INSN (VOIDmode, 0, 0, 0, 0, 0, savepat, -1, 0, 0);
  restinsn = gen_rtx_INSN (VOIDmode, 0, 0, 0, 0, 0, restpat, -1, 0, 0);

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (mode = 0 ; mode < MAX_MACHINE_MODE; mode++)
      if (HARD_REGNO_MODE_OK (i, mode))
 {
   int ok;



   REGNO (test_reg) = i;
   PUT_MODE (test_reg, mode);
   PUT_MODE (test_mem, mode);


   INSN_CODE (saveinsn) = -1;
   INSN_CODE (restinsn) = -1;

   reg_save_code[i][mode] = recog_memoized (saveinsn);
   reg_restore_code[i][mode] = recog_memoized (restinsn);



   ok = (reg_save_code[i][mode] != -1
  && reg_restore_code[i][mode] != -1);
   if (ok)
     {
       extract_insn (saveinsn);
       ok = constrain_operands (1);
       extract_insn (restinsn);
       ok &= constrain_operands (1);
     }

   if (! ok)
     {
       reg_save_code[i][mode] = -1;
       reg_restore_code[i][mode] = -1;
     }
 }
      else
 {
   reg_save_code[i][mode] = -1;
   reg_restore_code[i][mode] = -1;
 }

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (j = 1; j <= MOVE_MAX_WORDS; j++)
      if (reg_save_code [i][regno_save_mode[i][j]] == -1)
 {
   regno_save_mode[i][j] = VOIDmode;
   if (j == 1)
     {
       call_fixed_regs[i] = 1;
       SET_HARD_REG_BIT (call_fixed_reg_set, i);
     }
 }
}
