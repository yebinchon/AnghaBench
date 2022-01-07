
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_chain {int dead_or_set; } ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CLEAR_HARD_REG_BIT (int ,int) ;
 size_t GET_MODE (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int SET_REGNO_REG_SET (int *,int) ;
 int TEST_HARD_REG_BIT (int ,int) ;
 int VOIDmode ;
 scalar_t__ adjust_address (scalar_t__,int,int ) ;
 scalar_t__ copy_rtx (scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 int gen_rtx_REG (size_t,int) ;
 scalar_t__ gen_rtx_SET (int,int ,scalar_t__) ;
 scalar_t__** hard_regno_nregs ;
 int hard_regs_saved ;
 struct insn_chain* insert_one_insn (struct insn_chain*,int,int,scalar_t__) ;
 int n_regs_saved ;
 int** reg_restore_code ;
 scalar_t__** regno_save_mem ;

__attribute__((used)) static int
insert_restore (struct insn_chain *chain, int before_p, int regno,
  int maxrestore, enum machine_mode *save_mode)
{
  int i, k;
  rtx pat = NULL_RTX;
  int code;
  unsigned int numregs = 0;
  struct insn_chain *new;
  rtx mem;







  gcc_assert (regno_save_mem[regno][1]);





  for (i = maxrestore; i > 0; i--)
    {
      int j;
      int ok = 1;

      if (regno_save_mem[regno][i] == 0)
 continue;

      for (j = 0; j < i; j++)
 if (! TEST_HARD_REG_BIT (hard_regs_saved, regno + j))
   {
     ok = 0;
     break;
   }

      if (! ok)
 continue;

      numregs = i;
      break;
    }

  mem = regno_save_mem [regno][numregs];
  if (save_mode [regno] != VOIDmode
      && save_mode [regno] != GET_MODE (mem)
      && numregs == (unsigned int) hard_regno_nregs[regno][save_mode [regno]])
    mem = adjust_address (mem, save_mode[regno], 0);
  else
    mem = copy_rtx (mem);
  pat = gen_rtx_SET (VOIDmode,
       gen_rtx_REG (GET_MODE (mem),
      regno), mem);
  code = reg_restore_code[regno][GET_MODE (mem)];
  new = insert_one_insn (chain, before_p, code, pat);


  for (k = 0; k < i; k++)
    {
      CLEAR_HARD_REG_BIT (hard_regs_saved, regno + k);
      SET_REGNO_REG_SET (&new->dead_or_set, regno + k);
      n_regs_saved--;
    }


  return numregs - 1;
}
