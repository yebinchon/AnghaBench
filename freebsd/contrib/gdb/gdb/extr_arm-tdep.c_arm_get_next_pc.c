
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ ADDR_BITS_REMOVE (scalar_t__) ;
 unsigned long ARM_PS_REGNUM ;
 scalar_t__ BranchDest (scalar_t__,unsigned long) ;
 unsigned long FLAG_C ;
 unsigned long INST_NV ;
 scalar_t__ arm_pc_is_thumb (scalar_t__) ;
 int bit (unsigned long,int) ;
 int bitcount (unsigned long) ;
 unsigned long bits (unsigned long,int,int) ;
 scalar_t__ condition_true (unsigned long,unsigned long) ;
 int error (char*) ;
 int fprintf_filtered (int ,char*) ;
 int gdb_stderr ;
 unsigned long read_memory_integer (scalar_t__,int) ;
 unsigned long read_register (unsigned long) ;
 unsigned long shifted_reg_val (unsigned long,int,unsigned long,unsigned long) ;
 scalar_t__ thumb_get_next_pc (scalar_t__) ;

CORE_ADDR
arm_get_next_pc (CORE_ADDR pc)
{
  unsigned long pc_val;
  unsigned long this_instr;
  unsigned long status;
  CORE_ADDR nextpc;

  if (arm_pc_is_thumb (pc))
    return thumb_get_next_pc (pc);

  pc_val = (unsigned long) pc;
  this_instr = read_memory_integer (pc, 4);
  status = read_register (ARM_PS_REGNUM);
  nextpc = (CORE_ADDR) (pc_val + 4);

  if (condition_true (bits (this_instr, 28, 31), status))
    {
      switch (bits (this_instr, 24, 27))
 {
 case 0x0:
 case 0x1:
 case 0x2:
 case 0x3:
   {
     unsigned long operand1, operand2, result = 0;
     unsigned long rn;
     int c;

     if (bits (this_instr, 12, 15) != 15)
       break;

     if (bits (this_instr, 22, 25) == 0
  && bits (this_instr, 4, 7) == 9)
       error ("Illegal update to pc in instruction");


     if (bits (this_instr, 4, 28) == 0x12fff1
  || bits (this_instr, 4, 28) == 0x12fff3)
       {
  rn = bits (this_instr, 0, 3);
  result = (rn == 15) ? pc_val + 8 : read_register (rn);
  nextpc = (CORE_ADDR) ADDR_BITS_REMOVE (result);

  if (nextpc == pc)
    error ("Infinite loop detected");

  return nextpc;
       }


     c = (status & FLAG_C) ? 1 : 0;
     rn = bits (this_instr, 16, 19);
     operand1 = (rn == 15) ? pc_val + 8 : read_register (rn);

     if (bit (this_instr, 25))
       {
  unsigned long immval = bits (this_instr, 0, 7);
  unsigned long rotate = 2 * bits (this_instr, 8, 11);
  operand2 = ((immval >> rotate) | (immval << (32 - rotate)))
    & 0xffffffff;
       }
     else
       operand2 = shifted_reg_val (this_instr, c, pc_val, status);

     switch (bits (this_instr, 21, 24))
       {
       case 0x0:
  result = operand1 & operand2;
  break;

       case 0x1:
  result = operand1 ^ operand2;
  break;

       case 0x2:
  result = operand1 - operand2;
  break;

       case 0x3:
  result = operand2 - operand1;
  break;

       case 0x4:
  result = operand1 + operand2;
  break;

       case 0x5:
  result = operand1 + operand2 + c;
  break;

       case 0x6:
  result = operand1 - operand2 + c;
  break;

       case 0x7:
  result = operand2 - operand1 + c;
  break;

       case 0x8:
       case 0x9:
       case 0xa:
       case 0xb:
  result = (unsigned long) nextpc;
  break;

       case 0xc:
  result = operand1 | operand2;
  break;

       case 0xd:

  result = operand2;
  break;

       case 0xe:
  result = operand1 & ~operand2;
  break;

       case 0xf:
  result = ~operand2;
  break;
       }
     nextpc = (CORE_ADDR) ADDR_BITS_REMOVE (result);

     if (nextpc == pc)
       error ("Infinite loop detected");
     break;
   }

 case 0x4:
 case 0x5:
 case 0x6:
 case 0x7:
   if (bit (this_instr, 20))
     {

       if (bits (this_instr, 12, 15) == 15)
  {

    unsigned long rn;
    unsigned long base;

    if (bit (this_instr, 22))
      error ("Illegal update to pc in instruction");


    rn = bits (this_instr, 16, 19);
    base = (rn == 15) ? pc_val + 8 : read_register (rn);
    if (bit (this_instr, 24))
      {

        int c = (status & FLAG_C) ? 1 : 0;
        unsigned long offset =
        (bit (this_instr, 25)
         ? shifted_reg_val (this_instr, c, pc_val, status)
         : bits (this_instr, 0, 11));

        if (bit (this_instr, 23))
   base += offset;
        else
   base -= offset;
      }
    nextpc = (CORE_ADDR) read_memory_integer ((CORE_ADDR) base,
           4);

    nextpc = ADDR_BITS_REMOVE (nextpc);

    if (nextpc == pc)
      error ("Infinite loop detected");
  }
     }
   break;

 case 0x8:
 case 0x9:
   if (bit (this_instr, 20))
     {

       if (bit (this_instr, 15))
  {

    int offset = 0;

    if (bit (this_instr, 23))
      {

        unsigned long reglist = bits (this_instr, 0, 14);
        offset = bitcount (reglist) * 4;
        if (bit (this_instr, 24))
   offset += 4;
      }
    else if (bit (this_instr, 24))
      offset = -4;

    {
      unsigned long rn_val =
      read_register (bits (this_instr, 16, 19));
      nextpc =
        (CORE_ADDR) read_memory_integer ((CORE_ADDR) (rn_val
          + offset),
             4);
    }
    nextpc = ADDR_BITS_REMOVE (nextpc);
    if (nextpc == pc)
      error ("Infinite loop detected");
  }
     }
   break;

 case 0xb:
 case 0xa:
   {
     nextpc = BranchDest (pc, this_instr);


     if (bits (this_instr, 28, 31) == INST_NV)
       nextpc |= bit (this_instr, 24) << 1;

     nextpc = ADDR_BITS_REMOVE (nextpc);
     if (nextpc == pc)
       error ("Infinite loop detected");
     break;
   }

 case 0xc:
 case 0xd:
 case 0xe:
 case 0xf:
   break;

 default:
   fprintf_filtered (gdb_stderr, "Bad bit-field extraction\n");
   return (pc);
 }
    }

  return nextpc;
}
