
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_4__ {TYPE_1__* frch_cfi_data; } ;
struct TYPE_3__ {int cur_cfa_offset; } ;


 int DW_CFA_def_cfa ;
 int cfi_add_CFA_insn_reg_offset (int ,unsigned int,int ) ;
 TYPE_2__* frchain_now ;

void
cfi_add_CFA_def_cfa (unsigned regno, offsetT offset)
{
  cfi_add_CFA_insn_reg_offset (DW_CFA_def_cfa, regno, offset);
  frchain_now->frch_cfi_data->cur_cfa_offset = offset;
}
