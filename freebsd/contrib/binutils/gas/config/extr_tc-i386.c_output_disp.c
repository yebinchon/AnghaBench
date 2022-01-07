
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_12__ {char* fr_literal; int fr_fix; struct TYPE_12__* fr_next; } ;
typedef TYPE_3__ fragS ;
typedef enum bfd_reloc_code_real { ____Placeholder_bfd_reloc_code_real } bfd_reloc_code_real ;
struct TYPE_15__ {scalar_t__ X_op; int X_add_number; scalar_t__ X_add_symbol; int X_op_symbol; } ;
struct TYPE_14__ {unsigned int operands; int* types; int* flags; TYPE_2__* op; int * reloc; scalar_t__ imm_operands; } ;
struct TYPE_13__ {scalar_t__ X_op; } ;
struct TYPE_11__ {TYPE_9__* disps; TYPE_1__* imms; } ;
struct TYPE_10__ {int X_add_number; } ;


 int BFD_RELOC_32 ;
 int BFD_RELOC_32_PCREL ;
 int BFD_RELOC_386_GOTPC ;
 int BFD_RELOC_64 ;
 int BFD_RELOC_X86_64_32S ;
 int BFD_RELOC_X86_64_GOTPC32 ;
 int BFD_RELOC_X86_64_GOTPC64 ;
 int Disp ;
 int Disp32S ;
 int Disp8 ;
 scalar_t__ GOT_symbol ;
 int Imm ;
 scalar_t__ O_add ;
 scalar_t__ O_constant ;
 scalar_t__ O_subtract ;
 scalar_t__ O_symbol ;
 int Operand_PCrel ;
 int assert (int) ;
 int disp_size (unsigned int) ;
 int fix_new_exp (TYPE_3__*,int,int,TYPE_9__*,int,int) ;
 char* frag_more (int) ;
 TYPE_3__* frag_now ;
 TYPE_6__ i ;
 int imm_size (unsigned int) ;
 int md_number_to_chars (char*,int,int) ;
 scalar_t__ object_64bit ;
 int offset_in_range (int,int) ;
 int reloc (int,int,int,int ) ;
 TYPE_4__* symbol_get_value_expression (int ) ;

__attribute__((used)) static void
output_disp (fragS *insn_start_frag, offsetT insn_start_off)
{
  char *p;
  unsigned int n;

  for (n = 0; n < i.operands; n++)
    {
      if (i.types[n] & Disp)
 {
   if (i.op[n].disps->X_op == O_constant)
     {
       int size = disp_size (n);
       offsetT val;

       val = offset_in_range (i.op[n].disps->X_add_number,
         size);
       p = frag_more (size);
       md_number_to_chars (p, val, size);
     }
   else
     {
       enum bfd_reloc_code_real reloc_type;
       int size = disp_size (n);
       int sign = (i.types[n] & Disp32S) != 0;
       int pcrel = (i.flags[n] & Operand_PCrel) != 0;


       assert ((i.types[n] & Disp8) == 0);




       if (pcrel && i.imm_operands)
  {
    unsigned int n1;
    int sz = 0;

    for (n1 = 0; n1 < i.operands; n1++)
      if (i.types[n1] & Imm)
        {


   assert (sz == 0);
   sz = imm_size (n1);
   i.op[n].disps->X_add_number -= sz;
        }

    assert (sz != 0);
  }

       p = frag_more (size);
       reloc_type = reloc (size, pcrel, sign, i.reloc[n]);
       if (GOT_symbol
    && GOT_symbol == i.op[n].disps->X_add_symbol
    && (((reloc_type == BFD_RELOC_32
   || reloc_type == BFD_RELOC_X86_64_32S
   || (reloc_type == BFD_RELOC_64
       && object_64bit))
         && (i.op[n].disps->X_op == O_symbol
      || (i.op[n].disps->X_op == O_add
          && ((symbol_get_value_expression
        (i.op[n].disps->X_op_symbol)->X_op)
       == O_subtract))))
        || reloc_type == BFD_RELOC_32_PCREL))
  {
    offsetT add;

    if (insn_start_frag == frag_now)
      add = (p - frag_now->fr_literal) - insn_start_off;
    else
      {
        fragS *fr;

        add = insn_start_frag->fr_fix - insn_start_off;
        for (fr = insn_start_frag->fr_next;
      fr && fr != frag_now; fr = fr->fr_next)
   add += fr->fr_fix;
        add += p - frag_now->fr_literal;
      }

    if (!object_64bit)
      {
        reloc_type = BFD_RELOC_386_GOTPC;
        i.op[n].imms->X_add_number += add;
      }
    else if (reloc_type == BFD_RELOC_64)
      reloc_type = BFD_RELOC_X86_64_GOTPC64;
    else



      reloc_type = BFD_RELOC_X86_64_GOTPC32;
  }
       fix_new_exp (frag_now, p - frag_now->fr_literal, size,
      i.op[n].disps, pcrel, reloc_type);
     }
 }
    }
}
