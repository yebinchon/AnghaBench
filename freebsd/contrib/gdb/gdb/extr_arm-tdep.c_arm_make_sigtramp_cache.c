
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct arm_prologue_cache {size_t framereg; TYPE_1__* saved_regs; int prev_sp; } ;
struct TYPE_2__ {int addr; } ;


 size_t ARM_SP_REGNUM ;
 int NUM_REGS ;
 int SIGCONTEXT_REGISTER_ADDRESS (int ,int ,int) ;
 int current_gdbarch ;
 struct arm_prologue_cache* frame_obstack_zalloc (int) ;
 int frame_pc_unwind (struct frame_info*) ;
 int frame_unwind_register_unsigned (struct frame_info*,size_t) ;
 int read_memory_integer (int ,int ) ;
 int register_size (int ,size_t) ;
 TYPE_1__* trad_frame_alloc_saved_regs (struct frame_info*) ;

__attribute__((used)) static struct arm_prologue_cache *
arm_make_sigtramp_cache (struct frame_info *next_frame)
{
  struct arm_prologue_cache *cache;
  int reg;

  cache = frame_obstack_zalloc (sizeof (struct arm_prologue_cache));

  cache->prev_sp = frame_unwind_register_unsigned (next_frame, ARM_SP_REGNUM);

  cache->saved_regs = trad_frame_alloc_saved_regs (next_frame);

  for (reg = 0; reg < NUM_REGS; reg++)
    cache->saved_regs[reg].addr
      = SIGCONTEXT_REGISTER_ADDRESS (cache->prev_sp,
         frame_pc_unwind (next_frame), reg);


  cache->framereg = ARM_SP_REGNUM;
  cache->prev_sp
    = read_memory_integer (cache->saved_regs[cache->framereg].addr,
      register_size (current_gdbarch, cache->framereg));

  return cache;
}
