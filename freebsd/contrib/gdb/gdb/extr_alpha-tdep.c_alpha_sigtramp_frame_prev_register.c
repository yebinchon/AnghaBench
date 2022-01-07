
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct alpha_sigtramp_unwind_cache {scalar_t__ sigcontext_addr; } ;
typedef enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef scalar_t__ CORE_ADDR ;


 int ALPHA_REGISTER_SIZE ;
 struct alpha_sigtramp_unwind_cache* alpha_sigtramp_frame_unwind_cache (struct frame_info*,void**) ;
 scalar_t__ alpha_sigtramp_register_address (scalar_t__,int) ;
 int frame_register (struct frame_info*,int,int*,int*,scalar_t__*,int*,void*) ;
 int get_frame_memory (struct frame_info*,scalar_t__,void*,int ) ;
 int lval_memory ;

__attribute__((used)) static void
alpha_sigtramp_frame_prev_register (struct frame_info *next_frame,
        void **this_prologue_cache,
        int regnum, int *optimizedp,
        enum lval_type *lvalp, CORE_ADDR *addrp,
        int *realnump, void *bufferp)
{
  struct alpha_sigtramp_unwind_cache *info
    = alpha_sigtramp_frame_unwind_cache (next_frame, this_prologue_cache);
  CORE_ADDR addr;

  if (info->sigcontext_addr != 0)
    {

      addr = alpha_sigtramp_register_address (info->sigcontext_addr, regnum);
      if (addr != 0)
 {
   *optimizedp = 0;
   *lvalp = lval_memory;
   *addrp = addr;
   *realnump = -1;
   if (bufferp != ((void*)0))
     get_frame_memory (next_frame, addr, bufferp, ALPHA_REGISTER_SIZE);
   return;
 }
    }





  frame_register (next_frame, regnum, optimizedp, lvalp, addrp,
    realnump, bufferp);
}
