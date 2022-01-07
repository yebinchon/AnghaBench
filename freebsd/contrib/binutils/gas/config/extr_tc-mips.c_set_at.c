
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X_op; int X_add_number; } ;


 int AT ;
 int BFD_RELOC_LO16 ;
 int HAVE_64BIT_GPRS ;
 scalar_t__ O_constant ;
 TYPE_1__ imm_expr ;
 int load_register (int ,TYPE_1__*,int ) ;
 int macro_build (TYPE_1__*,char*,char*,int ,int,int ) ;

__attribute__((used)) static void
set_at (int reg, int unsignedp)
{
  if (imm_expr.X_op == O_constant
      && imm_expr.X_add_number >= -0x8000
      && imm_expr.X_add_number < 0x8000)
    macro_build (&imm_expr, unsignedp ? "sltiu" : "slti", "t,r,j",
   AT, reg, BFD_RELOC_LO16);
  else
    {
      load_register (AT, &imm_expr, HAVE_64BIT_GPRS);
      macro_build (((void*)0), unsignedp ? "sltu" : "slt", "d,v,t", AT, reg, AT);
    }
}
