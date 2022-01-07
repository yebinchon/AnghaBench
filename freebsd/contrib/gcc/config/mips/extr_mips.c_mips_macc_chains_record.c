
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ get_attr_may_clobber_hilo (int ) ;
 int mips_macc_chains_last_hilo ;

__attribute__((used)) static void
mips_macc_chains_record (rtx insn)
{
  if (get_attr_may_clobber_hilo (insn))
    mips_macc_chains_last_hilo = insn;
}
