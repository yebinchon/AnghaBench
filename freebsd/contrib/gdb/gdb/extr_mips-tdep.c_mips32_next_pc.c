
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fp_control_status; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 int itype_op (unsigned long) ;
 int itype_rs (unsigned long) ;
 int itype_rt (unsigned long) ;
 int jtype_target (unsigned long) ;
 scalar_t__ mips32_relative_offset (unsigned long) ;
 unsigned long mips_fetch_instruction (int) ;
 TYPE_1__* mips_regnum (int ) ;
 int read_signed_register (int) ;
 int rtype_funct (unsigned long) ;
 int rtype_rs (unsigned long) ;

__attribute__((used)) static CORE_ADDR
mips32_next_pc (CORE_ADDR pc)
{
  unsigned long inst;
  int op;
  inst = mips_fetch_instruction (pc);
  if ((inst & 0xe0000000) != 0)
    {
      if (itype_op (inst) >> 2 == 5)

 {
   op = (itype_op (inst) & 0x03);
   switch (op)
     {
     case 0:
       goto equal_branch;
     case 1:
       goto neq_branch;
     case 2:
       goto less_branch;
     case 3:
       goto greater_branch;
     default:
       pc += 4;
     }
 }
      else if (itype_op (inst) == 17 && itype_rs (inst) == 8)

 {
   int tf = itype_rt (inst) & 0x01;
   int cnum = itype_rt (inst) >> 2;
   int fcrcs =
     read_signed_register (mips_regnum (current_gdbarch)->
      fp_control_status);
   int cond = ((fcrcs >> 24) & 0x0e) | ((fcrcs >> 23) & 0x01);

   if (((cond >> cnum) & 0x01) == tf)
     pc += mips32_relative_offset (inst) + 4;
   else
     pc += 8;
 }
      else
 pc += 4;
    }
  else
    {


      switch (op = itype_op (inst) & 0x07)
 {
 case 0:
   op = rtype_funct (inst);
   switch (op)
     {
     case 8:
     case 9:

       pc = read_signed_register (rtype_rs (inst));
       break;
     default:
       pc += 4;
     }

   break;
 case 1:
   {
     op = itype_rt (inst);
     switch (op)
       {
       case 0:
       case 2:
       case 16:
       case 18:
       less_branch:
  if (read_signed_register (itype_rs (inst)) < 0)
    pc += mips32_relative_offset (inst) + 4;
  else
    pc += 8;
  break;
       case 1:
       case 3:
       case 17:
       case 19:
  if (read_signed_register (itype_rs (inst)) >= 0)
    pc += mips32_relative_offset (inst) + 4;
  else
    pc += 8;
  break;

       default:
  pc += 4;
       }
   }
   break;
 case 2:
 case 3:
   {
     unsigned long reg;
     reg = jtype_target (inst) << 2;

     pc = reg + ((pc + 4) & 0xf0000000);
   }
   break;

   {
     unsigned long reg;
     reg = jtype_target (inst) << 2;
     pc = reg + ((pc + 4) & 0xf0000000) + 1;

   }
   break;
 case 4:
 equal_branch:
   if (read_signed_register (itype_rs (inst)) ==
       read_signed_register (itype_rt (inst)))
     pc += mips32_relative_offset (inst) + 4;
   else
     pc += 8;
   break;
 case 5:
 neq_branch:
   if (read_signed_register (itype_rs (inst)) !=
       read_signed_register (itype_rt (inst)))
     pc += mips32_relative_offset (inst) + 4;
   else
     pc += 8;
   break;
 case 6:
   if (read_signed_register (itype_rs (inst) <= 0))
     pc += mips32_relative_offset (inst) + 4;
   else
     pc += 8;
   break;
 case 7:
 default:
 greater_branch:
   if (read_signed_register (itype_rs (inst) > 0))
     pc += mips32_relative_offset (inst) + 4;
   else
     pc += 8;
   break;
 }
    }
  return pc;
}
