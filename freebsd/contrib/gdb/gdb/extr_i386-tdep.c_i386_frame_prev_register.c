
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i386_frame_cache {int saved_sp; int* saved_regs; scalar_t__ pc_in_eax; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int I386_EAX_REGNUM ;
 int I386_EFLAGS_REGNUM ;
 int I386_EIP_REGNUM ;
 int I386_ESP_REGNUM ;
 int I386_NUM_SAVED_REGS ;
 int current_gdbarch ;
 int frame_register_unwind (struct frame_info*,int,int*,int*,int*,int*,void*) ;
 int frame_unwind_register_unsigned (struct frame_info*,int) ;
 int gdb_assert (int) ;
 struct i386_frame_cache* i386_frame_cache (struct frame_info*,void**) ;
 int lval_memory ;
 int not_lval ;
 int read_memory (int,void*,int ) ;
 int register_size (int ,int) ;
 int store_unsigned_integer (void*,int,int) ;

__attribute__((used)) static void
i386_frame_prev_register (struct frame_info *next_frame, void **this_cache,
     int regnum, int *optimizedp,
     enum lval_type *lvalp, CORE_ADDR *addrp,
     int *realnump, void *valuep)
{
  struct i386_frame_cache *cache = i386_frame_cache (next_frame, this_cache);

  gdb_assert (regnum >= 0);
  if (regnum == I386_EFLAGS_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
 {
   ULONGEST val;


   val = frame_unwind_register_unsigned (next_frame,
      I386_EFLAGS_REGNUM);
   val &= ~(1 << 10);
   store_unsigned_integer (valuep, 4, val);
 }

      return;
    }

  if (regnum == I386_EIP_REGNUM && cache->pc_in_eax)
    {
      frame_register_unwind (next_frame, I386_EAX_REGNUM,
        optimizedp, lvalp, addrp, realnump, valuep);
      return;
    }

  if (regnum == I386_ESP_REGNUM && cache->saved_sp)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (valuep)
 {

   store_unsigned_integer (valuep, 4, cache->saved_sp);
 }
      return;
    }

  if (regnum < I386_NUM_SAVED_REGS && cache->saved_regs[regnum] != -1)
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = cache->saved_regs[regnum];
      *realnump = -1;
      if (valuep)
 {

   read_memory (*addrp, valuep,
         register_size (current_gdbarch, regnum));
 }
      return;
    }

  frame_register_unwind (next_frame, regnum,
    optimizedp, lvalp, addrp, realnump, valuep);
}
