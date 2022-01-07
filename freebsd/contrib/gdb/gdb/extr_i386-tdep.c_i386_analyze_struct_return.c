
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame_cache {int sp_offset; int pc_in_eax; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int read_memory (scalar_t__,unsigned char*,int) ;
 unsigned char read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_analyze_struct_return (CORE_ADDR pc, CORE_ADDR current_pc,
       struct i386_frame_cache *cache)
{
  static unsigned char proto1[3] = { 0x87, 0x04, 0x24 };
  static unsigned char proto2[4] = { 0x87, 0x44, 0x24, 0x00 };
  unsigned char buf[4];
  unsigned char op;

  if (current_pc <= pc)
    return pc;

  op = read_memory_unsigned_integer (pc, 1);

  if (op != 0x58)
    return pc;

  read_memory (pc + 1, buf, 4);
  if (memcmp (buf, proto1, 3) != 0 && memcmp (buf, proto2, 4) != 0)
    return pc;

  if (current_pc == pc)
    {
      cache->sp_offset += 4;
      return current_pc;
    }

  if (current_pc == pc + 1)
    {
      cache->pc_in_eax = 1;
      return current_pc;
    }

  if (buf[1] == proto1[1])
    return pc + 4;
  else
    return pc + 5;
}
