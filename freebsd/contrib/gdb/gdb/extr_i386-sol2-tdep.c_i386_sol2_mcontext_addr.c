
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int I386_ESP_REGNUM ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,int ) ;
 scalar_t__ get_frame_memory_unsigned (struct frame_info*,scalar_t__,int) ;

__attribute__((used)) static CORE_ADDR
i386_sol2_mcontext_addr (struct frame_info *next_frame)
{
  CORE_ADDR sp, ucontext_addr;

  sp = frame_unwind_register_unsigned (next_frame, I386_ESP_REGNUM);
  ucontext_addr = get_frame_memory_unsigned (next_frame, sp + 8, 4);

  return ucontext_addr + 36;
}
