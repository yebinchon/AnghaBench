
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ rtx ;
struct TYPE_3__ {int (* internal_label ) (int ,char*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int ASM_OUTPUT_ALIGN (int ,int) ;
 int CODE_LABEL_NUMBER (scalar_t__) ;
 int LR_REGNUM ;
 int asm_fprintf (int ,char*,...) ;
 int asm_out_file ;
 int stub1 (int ,char*,int ) ;
 int switch_to_section (int ) ;
 TYPE_2__ targetm ;
 int text_section ;
 int thumb_call_reg_needed ;
 scalar_t__* thumb_call_via_label ;

__attribute__((used)) static void
arm_file_end (void)
{
  int regno;

  if (! thumb_call_reg_needed)
    return;

  switch_to_section (text_section);
  asm_fprintf (asm_out_file, "\t.code 16\n");
  ASM_OUTPUT_ALIGN (asm_out_file, 1);

  for (regno = 0; regno < LR_REGNUM; regno++)
    {
      rtx label = thumb_call_via_label[regno];

      if (label != 0)
 {
   targetm.asm_out.internal_label (asm_out_file, "L",
       CODE_LABEL_NUMBER (label));
   asm_fprintf (asm_out_file, "\tbx\t%r\n", regno);
 }
    }
}
