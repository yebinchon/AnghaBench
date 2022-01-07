
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int symbolS ;
struct TYPE_5__ {int * lab2; int * lab1; } ;
struct TYPE_6__ {TYPE_1__ ll; } ;
struct cfi_insn_data {TYPE_2__ u; int insn; } ;
struct TYPE_8__ {TYPE_3__* frch_cfi_data; } ;
struct TYPE_7__ {int * last_address; } ;


 int DW_CFA_advance_loc ;
 struct cfi_insn_data* alloc_cfi_insn_data () ;
 TYPE_4__* frchain_now ;

void
cfi_add_advance_loc (symbolS *label)
{
  struct cfi_insn_data *insn = alloc_cfi_insn_data ();

  insn->insn = DW_CFA_advance_loc;
  insn->u.ll.lab1 = frchain_now->frch_cfi_data->last_address;
  insn->u.ll.lab2 = label;

  frchain_now->frch_cfi_data->last_address = label;
}
