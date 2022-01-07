
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ASM_GENERATE_INTERNAL_LABEL (char*,char*,int ) ;
 int CODE_LABEL_NUMBER (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ LABEL_P (int ) ;
 scalar_t__ LABEL_REF ;
 scalar_t__ NOTE_INSN_DELETED_LABEL ;
 scalar_t__ NOTE_LINE_NUMBER (int ) ;
 scalar_t__ NOTE_P (int ) ;
 int XEXP (int ,int ) ;
 int asm_out_file ;
 int assemble_name (int ,char*) ;
 int output_operand_lossage (char*) ;

void
output_asm_label (rtx x)
{
  char buf[256];

  if (GET_CODE (x) == LABEL_REF)
    x = XEXP (x, 0);
  if (LABEL_P (x)
      || (NOTE_P (x)
   && NOTE_LINE_NUMBER (x) == NOTE_INSN_DELETED_LABEL))
    ASM_GENERATE_INTERNAL_LABEL (buf, "L", CODE_LABEL_NUMBER (x));
  else
    output_operand_lossage ("'%%l' operand isn't a label");

  assemble_name (asm_out_file, buf);
}
