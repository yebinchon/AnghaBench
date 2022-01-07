
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef scalar_t__ CORE_ADDR ;


 int read_memory (scalar_t__,unsigned char*,int) ;
 unsigned char read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_skip_probe (CORE_ADDR pc)
{
  unsigned char buf[8];
  unsigned char op;

  op = read_memory_unsigned_integer (pc, 1);

  if (op == 0x68 || op == 0x6a)
    {
      int delta;



      if (op == 0x68)
 delta = 5;
      else
 delta = 2;



      read_memory (pc + delta, buf, sizeof (buf));
      if (buf[0] == 0xe8 && buf[6] == 0xc4 && buf[7] == 0x4)
 pc += delta + sizeof (buf);
    }

  return pc;
}
