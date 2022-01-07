
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ rtx ;
typedef int ds_t ;
struct TYPE_2__ {scalar_t__* operand; } ;


 int BEGIN_CONTROL ;
 int BEGIN_DATA ;
 int BEGIN_SPEC ;
 scalar_t__ COND_EXEC ;
 scalar_t__ COND_EXEC_CODE (scalar_t__) ;
 scalar_t__ FP_REGNO_P (int ) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GR_REGNO_P (int ) ;
 int MEM_P (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 int REGNO (scalar_t__) ;
 int REG_P (scalar_t__) ;
 scalar_t__ SET ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 int SPEC_MODE_FOR_EXTEND_FIRST ;
 int SPEC_MODE_FOR_EXTEND_LAST ;
 int SPEC_MODE_INVALID ;
 scalar_t__ UNSPEC ;
 int UNSPEC_LDA ;
 int UNSPEC_LDS ;
 int UNSPEC_LDSA ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 int XINT (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int ,int ) ;
 scalar_t__ ZERO_EXTEND ;
 int extract_insn_cached (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ ia64_gen_spec_insn (scalar_t__,int,int,int,int) ;
 int ia64_mode_to_int (int ) ;
 TYPE_1__ recog_data ;

__attribute__((used)) static int
ia64_speculate_insn (rtx insn, ds_t ts, rtx *new_pat)
{
  rtx pat, reg, mem, mem_reg;
  int mode_no, gen_p = 1;
  bool extend_p;

  gcc_assert (!(ts & ~BEGIN_SPEC) && ts);

  pat = PATTERN (insn);

  if (GET_CODE (pat) == COND_EXEC)
    pat = COND_EXEC_CODE (pat);


  if (GET_CODE (pat) != SET)
    return -1;

  reg = SET_DEST (pat);

  if (!REG_P (reg) || !(GR_REGNO_P (REGNO (reg)) || FP_REGNO_P (REGNO (reg))))
    return -1;


  mem = SET_SRC (pat);


  if (GET_CODE (mem) == ZERO_EXTEND)
    {
      mem = XEXP (mem, 0);
      extend_p = 1;
    }
  else
    extend_p = 0;


  if (GET_CODE (mem) == UNSPEC)
    {
      int code;

      code = XINT (mem, 1);
      if (code != UNSPEC_LDA && code != UNSPEC_LDS && code != UNSPEC_LDSA)
 return -1;

      if ((code == UNSPEC_LDA && !(ts & BEGIN_CONTROL))
   || (code == UNSPEC_LDS && !(ts & BEGIN_DATA))
   || code == UNSPEC_LDSA)
 gen_p = 0;

      mem = XVECEXP (mem, 0, 0);
      gcc_assert (MEM_P (mem));
    }


  if (!MEM_P (mem))
    return -1;


  mem_reg = XEXP (mem, 0);
  if (!REG_P (mem_reg))
    return -1;



  mode_no = ia64_mode_to_int (GET_MODE (mem));

  if (mode_no == SPEC_MODE_INVALID
      || (extend_p
   && !(SPEC_MODE_FOR_EXTEND_FIRST <= mode_no
        && mode_no <= SPEC_MODE_FOR_EXTEND_LAST)))
    return -1;

  extract_insn_cached (insn);
  gcc_assert (reg == recog_data.operand[0] && mem == recog_data.operand[1]);

  *new_pat = ia64_gen_spec_insn (insn, ts, mode_no, gen_p != 0, extend_p);

  return gen_p;
}
