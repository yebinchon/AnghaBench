
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PREFIX_CS ;
 int PREFIX_DS ;
 int PREFIX_ES ;
 int PREFIX_FS ;
 int PREFIX_GS ;
 int PREFIX_SS ;
 int append_seg () ;
 int b_mode ;
 int* codep ;
 int intel_operand_size (int ,int) ;
 scalar_t__ intel_syntax ;
 int prefixes ;
 int ptr_reg (int,int) ;
 int v_mode ;
 int z_mode ;

__attribute__((used)) static void
OP_DSreg (int code, int sizeflag)
{
  if (intel_syntax)
    {
      switch (codep[-1])
 {
 case 0x6f:
   intel_operand_size (z_mode, sizeflag);
   break;
 case 0xa5:
 case 0xa7:
 case 0xad:
   intel_operand_size (v_mode, sizeflag);
   break;
 default:
   intel_operand_size (b_mode, sizeflag);
 }
    }
  if ((prefixes
       & (PREFIX_CS
   | PREFIX_DS
   | PREFIX_SS
   | PREFIX_ES
   | PREFIX_FS
   | PREFIX_GS)) == 0)
    prefixes |= PREFIX_DS;
  append_seg ();
  ptr_reg (code, sizeflag);
}
