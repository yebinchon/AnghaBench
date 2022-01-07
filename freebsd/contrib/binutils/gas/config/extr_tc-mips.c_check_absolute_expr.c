
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mips_cl_insn {TYPE_1__* insn_mo; } ;
struct TYPE_6__ {scalar_t__ X_op; } ;
typedef TYPE_2__ expressionS ;
struct TYPE_5__ {int name; } ;


 scalar_t__ HAVE_32BIT_GPRS ;
 scalar_t__ O_big ;
 scalar_t__ O_constant ;
 int _ (char*) ;
 int as_bad (int ,...) ;
 int normalize_constant_expr (TYPE_2__*) ;

__attribute__((used)) static void
check_absolute_expr (struct mips_cl_insn *ip, expressionS *ex)
{
  if (ex->X_op == O_big)
    as_bad (_("unsupported large constant"));
  else if (ex->X_op != O_constant)
    as_bad (_("Instruction %s requires absolute expression"),
     ip->insn_mo->name);

  if (HAVE_32BIT_GPRS)
    normalize_constant_expr (ex);
}
