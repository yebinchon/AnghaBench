
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_cl_insn {scalar_t__ use_extend; scalar_t__ mips16_absolute_jump_p; } ;
struct TYPE_2__ {int mips16; } ;


 TYPE_1__ mips_opts ;

__attribute__((used)) static inline unsigned int
insn_length (const struct mips_cl_insn *insn)
{
  if (!mips_opts.mips16)
    return 4;
  return insn->mips16_absolute_jump_p || insn->use_extend ? 4 : 2;
}
