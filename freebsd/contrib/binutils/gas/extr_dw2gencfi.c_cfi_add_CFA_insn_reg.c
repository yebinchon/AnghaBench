
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int r; } ;
struct cfi_insn_data {int insn; TYPE_1__ u; } ;


 struct cfi_insn_data* alloc_cfi_insn_data () ;

__attribute__((used)) static void
cfi_add_CFA_insn_reg (int insn, unsigned regno)
{
  struct cfi_insn_data *insn_ptr = alloc_cfi_insn_data ();

  insn_ptr->insn = insn;
  insn_ptr->u.r = regno;
}
