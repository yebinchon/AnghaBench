
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {scalar_t__ pc; } ;
typedef int CORE_ADDR ;


 int SP_REGNUM ;
 scalar_t__ memcmp (char*,unsigned char const*,int) ;
 int read_memory_nobpt (scalar_t__,char*,int) ;
 int read_memory_unsigned_integer (scalar_t__,int) ;
 scalar_t__ read_register (int ) ;

__attribute__((used)) static CORE_ADDR
i386lynx_saved_pc_after_call (struct frame_info *frame)
{
  char opcode[7];
  static const unsigned char call_inst[] =
  { 0x9a, 0, 0, 0, 0, 8, 0 };

  read_memory_nobpt (frame->pc - 7, opcode, 7);
  if (memcmp (opcode, call_inst, 7) == 0)
    return read_memory_unsigned_integer (read_register (SP_REGNUM) + 4, 4);

  return read_memory_unsigned_integer (read_register (SP_REGNUM), 4);
}
