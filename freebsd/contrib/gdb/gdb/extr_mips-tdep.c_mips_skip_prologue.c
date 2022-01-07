
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ after_prologue (scalar_t__,int *) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ mips16_skip_prologue (scalar_t__) ;
 scalar_t__ mips32_skip_prologue (scalar_t__) ;
 scalar_t__ pc_is_mips16 (scalar_t__) ;

__attribute__((used)) static CORE_ADDR
mips_skip_prologue (CORE_ADDR pc)
{




  CORE_ADDR post_prologue_pc = after_prologue (pc, ((void*)0));

  if (post_prologue_pc != 0)
    return max (pc, post_prologue_pc);




  if (pc_is_mips16 (pc))
    return mips16_skip_prologue (pc);
  else
    return mips32_skip_prologue (pc);
}
