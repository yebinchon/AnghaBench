
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int n_alternatives; } ;


 char* ASM_COMMENT_START ;
 int INSN_CODE (scalar_t__) ;
 int INSN_UID (scalar_t__) ;
 int asm_out_file ;
 scalar_t__ debug_insn ;
 int fprintf (int ,char*,...) ;
 int get_attr_length (scalar_t__) ;
 TYPE_1__* insn_data ;
 int which_alternative ;

__attribute__((used)) static void
output_asm_name (void)
{
  if (debug_insn)
    {
      int num = INSN_CODE (debug_insn);
      fprintf (asm_out_file, "\t%s %d\t%s",
        ASM_COMMENT_START, INSN_UID (debug_insn),
        insn_data[num].name);
      if (insn_data[num].n_alternatives > 1)
 fprintf (asm_out_file, "/%d", which_alternative + 1);






      debug_insn = 0;
    }
}
