
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ insn_invalid_p (scalar_t__) ;

__attribute__((used)) static bool
seq_insns_valid_p (rtx seq)
{
  rtx x;

  for (x = seq; x; x = NEXT_INSN (x))
    if (insn_invalid_p (x))
      return 0;

  return 1;
}
