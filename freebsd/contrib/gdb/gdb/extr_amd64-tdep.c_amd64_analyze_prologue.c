
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd64_frame_cache {int sp_offset; scalar_t__ frameless_p; scalar_t__* saved_regs; } ;
typedef scalar_t__ CORE_ADDR ;


 size_t AMD64_RBP_REGNUM ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int read_memory (scalar_t__,unsigned char*,int) ;
 unsigned char read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
amd64_analyze_prologue (CORE_ADDR pc, CORE_ADDR current_pc,
   struct amd64_frame_cache *cache)
{
  static unsigned char proto[3] = { 0x48, 0x89, 0xe5 };
  unsigned char buf[3];
  unsigned char op;

  if (current_pc <= pc)
    return current_pc;

  op = read_memory_unsigned_integer (pc, 1);

  if (op == 0x55)
    {


      cache->saved_regs[AMD64_RBP_REGNUM] = 0;
      cache->sp_offset += 8;


      if (current_pc <= pc + 1)
        return current_pc;


      read_memory (pc + 1, buf, 3);
      if (memcmp (buf, proto, 3) != 0)
 return pc + 1;


      cache->frameless_p = 0;
      return pc + 4;
    }

  return pc;
}
