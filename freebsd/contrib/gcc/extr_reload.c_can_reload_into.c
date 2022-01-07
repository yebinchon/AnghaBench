
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct recog_data {int dummy; } ;
typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ MEM_P (int ) ;
 scalar_t__ REG_P (int ) ;
 int VOIDmode ;
 int constrain_operands (int) ;
 int extract_insn (int ) ;
 int gen_rtx_REG (int,int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int make_insn_raw (int ) ;
 struct recog_data recog_data ;
 scalar_t__ recog_memoized (int ) ;

__attribute__((used)) static int
can_reload_into (rtx in, int regno, enum machine_mode mode)
{
  rtx dst, test_insn;
  int r = 0;
  struct recog_data save_recog_data;






  if (REG_P (in))
    return 1;





  if (MEM_P (in))
    return 1;



  dst = gen_rtx_REG (mode, regno);
  test_insn = make_insn_raw (gen_rtx_SET (VOIDmode, dst, in));
  save_recog_data = recog_data;
  if (recog_memoized (test_insn) >= 0)
    {
      extract_insn (test_insn);
      r = constrain_operands (1);
    }
  recog_data = save_recog_data;
  return r;
}
