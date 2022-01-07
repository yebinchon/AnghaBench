
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame_cache {int sp_offset; int locals; scalar_t__* saved_regs; } ;
typedef scalar_t__ CORE_ADDR ;


 size_t I386_EBP_REGNUM ;
 void* read_memory_integer (scalar_t__,int) ;
 int read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_analyze_frame_setup (CORE_ADDR pc, CORE_ADDR current_pc,
     struct i386_frame_cache *cache)
{
  unsigned char op;
  int skip = 0;

  if (current_pc <= pc)
    return current_pc;

  op = read_memory_unsigned_integer (pc, 1);

  if (op == 0x55)
    {


      cache->saved_regs[I386_EBP_REGNUM] = 0;
      cache->sp_offset += 4;


      if (current_pc <= pc + 1)
 return current_pc;

      op = read_memory_unsigned_integer (pc + 1, 1);
      while (op == 0x29 || op == 0x2b || op == 0x31 || op == 0x33)
 {
   op = read_memory_unsigned_integer (pc + skip + 2, 1);
   switch (op)
     {
     case 0xdb:
     case 0xc9:
     case 0xd2:
     case 0xc0:
       skip += 2;
       break;
     default:
       return pc + 1;
     }

   op = read_memory_unsigned_integer (pc + skip + 1, 1);
 }


      switch (op)
 {
 case 0x8b:
   if (read_memory_unsigned_integer (pc + skip + 2, 1) != 0xec)
     return pc + 1;
   break;
 case 0x89:
   if (read_memory_unsigned_integer (pc + skip + 2, 1) != 0xe5)
     return pc + 1;
   break;
 default:
   return pc + 1;
 }





      cache->locals = 0;
      pc += skip;


      if (current_pc <= pc + 3)
 return current_pc;







      op = read_memory_unsigned_integer (pc + 3, 1);
      if (op == 0x83)
 {

   if (read_memory_unsigned_integer (pc + 4, 1) != 0xec)

     return pc + 3;



   cache->locals = read_memory_integer (pc + 5, 1);
   return pc + 6;
 }
      else if (op == 0x81)
 {

   if (read_memory_unsigned_integer (pc + 4, 1) != 0xec)

     return pc + 3;


   cache->locals = read_memory_integer (pc + 5, 4);
   return pc + 9;
 }
      else
 {

   return pc + 3;
 }
    }
  else if (op == 0xc8)
    {
      cache->locals = read_memory_unsigned_integer (pc + 1, 2);
      return pc + 4;
    }

  return pc;
}
