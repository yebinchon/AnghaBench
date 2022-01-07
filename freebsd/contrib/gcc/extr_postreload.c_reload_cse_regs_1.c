
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int VOIDmode ;
 int cselib_finish () ;
 int cselib_init (int) ;
 int cselib_process_insn (scalar_t__) ;
 int end_alias_analysis () ;
 scalar_t__ gen_rtx_REG (int ,int) ;
 int init_alias_analysis () ;
 int reload_cse_simplify (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
reload_cse_regs_1 (rtx first)
{
  rtx insn;
  rtx testreg = gen_rtx_REG (VOIDmode, -1);

  cselib_init (1);
  init_alias_analysis ();

  for (insn = first; insn; insn = NEXT_INSN (insn))
    {
      if (INSN_P (insn))
 reload_cse_simplify (insn, testreg);

      cselib_process_insn (insn);
    }


  end_alias_analysis ();
  cselib_finish ();
}
