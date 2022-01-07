
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mep_insn ;


 size_t MAX_SAVED_FIXUP_CHAINS ;
 int as_fatal (char*) ;
 int gas_cgen_save_fixups (size_t) ;
 size_t num_insns_saved ;
 int * saved_insns ;

__attribute__((used)) static void
mep_save_insn (mep_insn insn)
{

  if (num_insns_saved < 0 || num_insns_saved >= MAX_SAVED_FIXUP_CHAINS)
    {
      as_fatal("index into saved_insns[] out of bounds.");
      return;
    }
  saved_insns[num_insns_saved] = insn;
  gas_cgen_save_fixups(num_insns_saved);
  num_insns_saved++;
}
