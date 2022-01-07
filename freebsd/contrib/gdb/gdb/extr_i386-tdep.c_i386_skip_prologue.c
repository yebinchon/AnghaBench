
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame_cache {int locals; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ i386_analyze_prologue (scalar_t__,int,struct i386_frame_cache*) ;
 scalar_t__ i386_follow_jump (scalar_t__) ;
 int read_memory_unsigned_integer (scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_skip_prologue (CORE_ADDR start_pc)
{
  static unsigned char pic_pat[6] =
  {
    0xe8, 0, 0, 0, 0,
    0x5b,
  };
  struct i386_frame_cache cache;
  CORE_ADDR pc;
  unsigned char op;
  int i;

  cache.locals = -1;
  pc = i386_analyze_prologue (start_pc, 0xffffffff, &cache);
  if (cache.locals < 0)
    return start_pc;
  for (i = 0; i < 6; i++)
    {
      op = read_memory_unsigned_integer (pc + i, 1);
      if (pic_pat[i] != op)
 break;
    }
  if (i == 6)
    {
      int delta = 6;

      op = read_memory_unsigned_integer (pc + delta, 1);

      if (op == 0x89)
 {
   op = read_memory_unsigned_integer (pc + delta + 1, 1);

   if (op == 0x5d)
     delta += 3;
   else if (op == 0x9d)
     delta += 6;
   else
     delta = 0;

   op = read_memory_unsigned_integer (pc + delta, 1);
 }


      if (delta > 0 && op == 0x81
   && read_memory_unsigned_integer (pc + delta + 1, 1) == 0xc3)
 {
   pc += delta + 6;
 }
    }

  return i386_follow_jump (pc);
}
