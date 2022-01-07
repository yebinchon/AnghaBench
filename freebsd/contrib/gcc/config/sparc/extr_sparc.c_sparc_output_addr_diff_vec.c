
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int (* internal_label ) (int ,char*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int ASM_OUTPUT_ADDR_DIFF_ELT (int ,int ,int ,int ) ;
 int ASM_OUTPUT_ADDR_VEC_END (int ) ;
 int ASM_OUTPUT_ADDR_VEC_START (int ) ;
 int ASM_OUTPUT_CASE_LABEL (int ,char*,int ,int ) ;
 int CODE_LABEL_NUMBER (int ) ;
 int NEXT_INSN (int ) ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int asm_out_file ;
 int stub1 (int ,char*,int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
sparc_output_addr_diff_vec (rtx vec)
{
  rtx lab = XEXP (vec, 0), body = XEXP (vec, 1);
  rtx base = XEXP (XEXP (body, 0), 0);
  int idx, vlen = XVECLEN (body, 1);
  (*targetm.asm_out.internal_label) (asm_out_file, "L", CODE_LABEL_NUMBER (lab));


  for (idx = 0; idx < vlen; idx++)
    {
      ASM_OUTPUT_ADDR_DIFF_ELT
        (asm_out_file,
         body,
         CODE_LABEL_NUMBER (XEXP (XVECEXP (body, 1, idx), 0)),
         CODE_LABEL_NUMBER (base));
    }




}
