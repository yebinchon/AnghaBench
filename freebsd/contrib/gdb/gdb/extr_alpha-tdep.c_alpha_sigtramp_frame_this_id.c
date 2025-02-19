
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int (* dynamic_sigtramp_offset ) (int) ;} ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
struct alpha_sigtramp_unwind_cache {scalar_t__ sigcontext_addr; } ;
typedef int CORE_ADDR ;


 int ALPHA_REGISTER_SIZE ;
 int ALPHA_SP_REGNUM ;
 struct alpha_sigtramp_unwind_cache* alpha_sigtramp_frame_unwind_cache (struct frame_info*,void**) ;
 int alpha_sigtramp_register_address (scalar_t__,int ) ;
 int current_gdbarch ;
 int frame_func_unwind (struct frame_info*) ;
 struct frame_id frame_id_build (int,int) ;
 int frame_pc_unwind (struct frame_info*) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int get_frame_memory_unsigned (struct frame_info*,int,int ) ;
 int stub1 (int) ;

__attribute__((used)) static void
alpha_sigtramp_frame_this_id (struct frame_info *next_frame,
         void **this_prologue_cache,
         struct frame_id *this_id)
{
  struct alpha_sigtramp_unwind_cache *info
    = alpha_sigtramp_frame_unwind_cache (next_frame, this_prologue_cache);
  struct gdbarch_tdep *tdep;
  CORE_ADDR stack_addr, code_addr;


  if (info->sigcontext_addr == 0)
    return;




  tdep = gdbarch_tdep (current_gdbarch);
  if (tdep->dynamic_sigtramp_offset)
    {
      int offset;
      code_addr = frame_pc_unwind (next_frame);
      offset = tdep->dynamic_sigtramp_offset (code_addr);
      if (offset >= 0)
 code_addr -= offset;
      else
 code_addr = 0;
    }
  else
    code_addr = frame_func_unwind (next_frame);


  stack_addr = alpha_sigtramp_register_address (info->sigcontext_addr,
      ALPHA_SP_REGNUM);
  stack_addr = get_frame_memory_unsigned (next_frame, stack_addr,
       ALPHA_REGISTER_SIZE);

  *this_id = frame_id_build (stack_addr, code_addr);
}
