
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fragS ;
struct TYPE_4__ {scalar_t__ X_op; } ;
typedef TYPE_1__ expressionS ;
typedef enum bfd_reloc_code_real { ____Placeholder_bfd_reloc_code_real } bfd_reloc_code_real ;


 int BFD_RELOC_32_SECREL ;
 int NO_RELOC ;
 scalar_t__ O_secrel ;
 scalar_t__ O_symbol ;
 int cons_sign ;
 int fix_new_exp (int *,unsigned int,unsigned int,TYPE_1__*,int ,int) ;
 int got_reloc ;
 int reloc (unsigned int,int ,int ,int ) ;

void
x86_cons_fix_new (fragS *frag, unsigned int off, unsigned int len,
    expressionS *exp)
{
  enum bfd_reloc_code_real r = reloc (len, 0, cons_sign, got_reloc);

  got_reloc = NO_RELOC;
  fix_new_exp (frag, off, len, exp, 0, r);
}
