
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expressionS ;


 int emit_expr (int *,unsigned int) ;
 char* sparc_cons_special_reloc ;
 int sparc_no_align_cons ;

void
sparc_cfi_emit_pcrel_expr (expressionS *exp, unsigned int nbytes)
{
  sparc_cons_special_reloc = "disp";
  sparc_no_align_cons = 1;
  emit_expr (exp, nbytes);
  sparc_no_align_cons = 0;
  sparc_cons_special_reloc = ((void*)0);
}
