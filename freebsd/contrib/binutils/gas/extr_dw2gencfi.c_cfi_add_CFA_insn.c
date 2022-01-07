
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_insn_data {int insn; } ;


 struct cfi_insn_data* alloc_cfi_insn_data () ;

__attribute__((used)) static void
cfi_add_CFA_insn(int insn)
{
  struct cfi_insn_data *insn_ptr = alloc_cfi_insn_data ();

  insn_ptr->insn = insn;
}
