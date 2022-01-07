
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int INSN_CODE (scalar_t__) ;
 scalar_t__ prev_insn_in_block (scalar_t__) ;

__attribute__((used)) static unsigned int
compute_hash (rtx insn)
{
  unsigned int hash = 0;
  rtx prev;

  hash = INSN_CODE (insn) * 100;

  prev = prev_insn_in_block (insn);
  if (prev)
    hash += INSN_CODE (prev);

  return hash;
}
