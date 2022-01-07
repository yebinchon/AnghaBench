
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_frame_cache {int saved_regs; } ;
struct frame_info {int dummy; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef int CORE_ADDR ;


 struct mips_frame_cache* mips_mdebug_frame_cache (struct frame_info*,void**) ;
 int trad_frame_prev_register (struct frame_info*,int ,int,int*,int*,int *,int*,void*) ;

__attribute__((used)) static void
mips_mdebug_frame_prev_register (struct frame_info *next_frame,
     void **this_cache,
     int regnum, int *optimizedp,
     enum lval_type *lvalp, CORE_ADDR *addrp,
     int *realnump, void *valuep)
{
  struct mips_frame_cache *info = mips_mdebug_frame_cache (next_frame,
          this_cache);
  trad_frame_prev_register (next_frame, info->saved_regs, regnum,
       optimizedp, lvalp, addrp, realnump, valuep);
}
