
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct frame_info {int dummy; } ;
struct arm_prologue_cache {scalar_t__ framesize; scalar_t__ frameoffset; scalar_t__ prev_sp; TYPE_1__* saved_regs; int framereg; } ;
struct TYPE_3__ {int addr; } ;
typedef scalar_t__ CORE_ADDR ;


 int NUM_REGS ;
 int arm_scan_prologue (struct frame_info*,struct arm_prologue_cache*) ;
 struct arm_prologue_cache* frame_obstack_zalloc (int) ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,int ) ;
 scalar_t__ trad_frame_addr_p (TYPE_1__*,int) ;
 TYPE_1__* trad_frame_alloc_saved_regs (struct frame_info*) ;

__attribute__((used)) static struct arm_prologue_cache *
arm_make_prologue_cache (struct frame_info *next_frame)
{
  int reg;
  struct arm_prologue_cache *cache;
  CORE_ADDR unwound_fp;

  cache = frame_obstack_zalloc (sizeof (struct arm_prologue_cache));
  cache->saved_regs = trad_frame_alloc_saved_regs (next_frame);

  arm_scan_prologue (next_frame, cache);
  unwound_fp = frame_unwind_register_unsigned (next_frame, cache->framereg);
  if (unwound_fp == 0)
    return cache;

  cache->prev_sp = unwound_fp + cache->framesize - cache->frameoffset;



  for (reg = 0; reg < NUM_REGS; reg++)
    if (trad_frame_addr_p (cache->saved_regs, reg))
      cache->saved_regs[reg].addr += cache->prev_sp;

  return cache;
}
