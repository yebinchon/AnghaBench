
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int reg; int offset; } ;
struct TYPE_4__ {TYPE_1__ ri; } ;
struct cfi_insn_data {int insn; TYPE_2__ u; } ;
typedef int offsetT ;


 struct cfi_insn_data* alloc_cfi_insn_data () ;

__attribute__((used)) static void
cfi_add_CFA_insn_reg_offset (int insn, unsigned regno, offsetT offset)
{
  struct cfi_insn_data *insn_ptr = alloc_cfi_insn_data ();

  insn_ptr->insn = insn;
  insn_ptr->u.ri.reg = regno;
  insn_ptr->u.ri.offset = offset;
}
