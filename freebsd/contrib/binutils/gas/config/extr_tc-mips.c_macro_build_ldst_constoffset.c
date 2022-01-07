
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ X_op; scalar_t__ X_add_number; } ;
typedef TYPE_1__ expressionS ;
struct TYPE_8__ {scalar_t__ noat; } ;


 char const* ADDRESS_ADD_INSN ;
 int AT ;
 int BFD_RELOC_LO16 ;
 scalar_t__ IS_SEXT_16BIT_NUM (scalar_t__) ;
 int IS_SEXT_32BIT_NUM (scalar_t__) ;
 scalar_t__ O_constant ;
 int _ (char*) ;
 int as_bad (int ) ;
 int as_warn (int ) ;
 int assert (int) ;
 int macro_build (TYPE_1__*,char const*,char*,int,int,int) ;
 int macro_build_lui (TYPE_1__*,int) ;
 TYPE_3__ mips_opts ;
 int normalize_constant_expr (TYPE_1__*) ;

__attribute__((used)) static void
macro_build_ldst_constoffset (expressionS *ep, const char *op,
         int treg, int breg, int dbl)
{
  assert (ep->X_op == O_constant);


  if (!dbl)
    normalize_constant_expr (ep);


  if (! IS_SEXT_32BIT_NUM(ep->X_add_number + 0x8000))
    as_warn (_("operand overflow"));

  if (IS_SEXT_16BIT_NUM(ep->X_add_number))
    {

      macro_build (ep, op, "t,o(b)", treg, BFD_RELOC_LO16, breg);
    }
  else
    {





      macro_build_lui (ep, AT);
      macro_build (((void*)0), ADDRESS_ADD_INSN, "d,v,t", AT, AT, breg);
      macro_build (ep, op, "t,o(b)", treg, BFD_RELOC_LO16, AT);

      if (mips_opts.noat)
 as_bad (_("Macro used $at after \".set noat\""));
    }
}
