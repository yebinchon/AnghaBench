
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int b_mode ;
 int* codep ;
 int intel_operand_size (int ,int) ;
 int intel_syntax ;
 int oappend (char*) ;
 int ptr_reg (int,int) ;
 int v_mode ;
 int z_mode ;

__attribute__((used)) static void
OP_ESreg (int code, int sizeflag)
{
  if (intel_syntax)
    {
      switch (codep[-1])
 {
 case 0x6d:
   intel_operand_size (z_mode, sizeflag);
   break;
 case 0xa5:
 case 0xa7:
 case 0xab:
 case 0xaf:
   intel_operand_size (v_mode, sizeflag);
   break;
 default:
   intel_operand_size (b_mode, sizeflag);
 }
    }
  oappend (&"%es:"[intel_syntax]);
  ptr_reg (code, sizeflag);
}
