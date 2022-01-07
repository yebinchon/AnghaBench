
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct constant_descriptor_rtx {int mode; int labelno; int constant; } ;
typedef int rtx ;
struct TYPE_6__ {int flags; } ;
struct TYPE_8__ {TYPE_2__ common; } ;
struct TYPE_5__ {int (* internal_label ) (int ,char*,int ) ;} ;
struct TYPE_7__ {TYPE_1__ asm_out; } ;


 int ASM_OUTPUT_SPECIAL_POOL_ENTRY (int ,int ,int ,unsigned int,int ,int ) ;

 int GET_CODE (int ) ;
 unsigned int GET_MODE_BITSIZE (int ) ;
 int INSN_DELETED_P (int ) ;

 int NOTE_INSN_DELETED ;
 int NOTE_LINE_NUMBER (int ) ;
 int NOTE_P (int ) ;
 int PLUS ;
 int SECTION_MERGE ;
 int XEXP (int ,int ) ;
 int asm_out_file ;
 int assemble_align (unsigned int) ;
 int done ;
 int gcc_assert (int) ;
 TYPE_4__* in_section ;
 int output_constant_pool_2 (int ,int ,unsigned int) ;
 int stub1 (int ,char*,int ) ;
 TYPE_3__ targetm ;

__attribute__((used)) static void
output_constant_pool_1 (struct constant_descriptor_rtx *desc,
   unsigned int align)
{
  rtx x, tmp;

  x = desc->constant;
  tmp = x;
  switch (GET_CODE (x))
    {
    case 129:
      if (GET_CODE (XEXP (x, 0)) != PLUS
   || GET_CODE (XEXP (XEXP (x, 0), 0)) != 128)
 break;
      tmp = XEXP (XEXP (x, 0), 0);


    case 128:
      tmp = XEXP (x, 0);
      gcc_assert (!INSN_DELETED_P (tmp));
      gcc_assert (!NOTE_P (tmp)
    || NOTE_LINE_NUMBER (tmp) != NOTE_INSN_DELETED);
      break;

    default:
      break;
    }






  assemble_align (align);


  targetm.asm_out.internal_label (asm_out_file, "LC", desc->labelno);


  output_constant_pool_2 (desc->mode, x, align);



  if (align > GET_MODE_BITSIZE (desc->mode)
      && in_section
      && (in_section->common.flags & SECTION_MERGE))
    assemble_align (align);




  return;
}
