
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct arm_prologue_cache {int saved_regs; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 void* arm_make_sigtramp_cache (struct frame_info*) ;
 int trad_frame_prev_register (struct frame_info*,int ,int,int*,int*,int *,int*,void*) ;

__attribute__((used)) static void
arm_sigtramp_prev_register (struct frame_info *next_frame,
       void **this_cache,
       int prev_regnum,
       int *optimized,
       enum lval_type *lvalp,
       CORE_ADDR *addrp,
       int *realnump,
       void *valuep)
{
  struct arm_prologue_cache *cache;

  if (*this_cache == ((void*)0))
    *this_cache = arm_make_sigtramp_cache (next_frame);
  cache = *this_cache;

  trad_frame_prev_register (next_frame, cache->saved_regs, prev_regnum,
       optimized, lvalp, addrp, realnump, valuep);
}
