
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct alpha_heuristic_unwind_cache {int return_reg; int vfp; scalar_t__* saved_regs; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int ALPHA_PC_REGNUM ;
 int ALPHA_REGISTER_SIZE ;
 int ALPHA_SP_REGNUM ;
 struct alpha_heuristic_unwind_cache* alpha_heuristic_frame_unwind_cache (struct frame_info*,void**,int ) ;
 int frame_register (struct frame_info*,int,int*,int*,scalar_t__*,int*,void*) ;
 int get_frame_memory (struct frame_info*,scalar_t__,void*,int ) ;
 int lval_memory ;
 int not_lval ;
 int store_unsigned_integer (void*,int ,int ) ;

__attribute__((used)) static void
alpha_heuristic_frame_prev_register (struct frame_info *next_frame,
         void **this_prologue_cache,
         int regnum, int *optimizedp,
         enum lval_type *lvalp, CORE_ADDR *addrp,
         int *realnump, void *bufferp)
{
  struct alpha_heuristic_unwind_cache *info
    = alpha_heuristic_frame_unwind_cache (next_frame, this_prologue_cache, 0);




  if (regnum == ALPHA_PC_REGNUM)
    regnum = info->return_reg;



  if (info->saved_regs[regnum])
    {
      *optimizedp = 0;
      *lvalp = lval_memory;
      *addrp = info->saved_regs[regnum];
      *realnump = -1;
      if (bufferp != ((void*)0))
 get_frame_memory (next_frame, *addrp, bufferp, ALPHA_REGISTER_SIZE);
      return;
    }



  if (regnum == ALPHA_SP_REGNUM)
    {
      *optimizedp = 0;
      *lvalp = not_lval;
      *addrp = 0;
      *realnump = -1;
      if (bufferp != ((void*)0))
 store_unsigned_integer (bufferp, ALPHA_REGISTER_SIZE, info->vfp);
      return;
    }


  frame_register (next_frame, regnum, optimizedp, lvalp, addrp,
    realnump, bufferp);
}
