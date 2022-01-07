
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;


 scalar_t__ constrain_operands (int) ;
 int delete_insns_since (int *) ;
 int * emit_insn (int *) ;
 int extract_insn (int *) ;
 int * get_last_insn () ;
 int recog_memoized (int *) ;

__attribute__((used)) static rtx
emit_insn_if_valid_for_reload (rtx insn)
{
  rtx last = get_last_insn ();
  int code;

  insn = emit_insn (insn);
  code = recog_memoized (insn);

  if (code >= 0)
    {
      extract_insn (insn);



      if (constrain_operands (1))
 return insn;
    }

  delete_insns_since (last);
  return ((void*)0);
}
