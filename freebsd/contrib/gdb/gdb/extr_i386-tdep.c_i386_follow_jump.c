
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 long read_memory_integer (scalar_t__,int) ;
 unsigned char read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_follow_jump (CORE_ADDR pc)
{
  unsigned char op;
  long delta = 0;
  int data16 = 0;

  op = read_memory_unsigned_integer (pc, 1);
  if (op == 0x66)
    {
      data16 = 1;
      op = read_memory_unsigned_integer (pc + 1, 1);
    }

  switch (op)
    {
    case 0xe9:

      if (data16)
 {
   delta = read_memory_integer (pc + 2, 2);



   delta += 4;
 }
      else
 {
   delta = read_memory_integer (pc + 1, 4);


   delta += 5;
 }
      break;
    case 0xeb:

      delta = read_memory_integer (pc + data16 + 1, 1);

      delta += data16 + 2;
      break;
    }

  return pc + delta;
}
