
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int ALPHA_SP_REGNUM ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,int ) ;

__attribute__((used)) static CORE_ADDR
alphafbsd_sigcontext_addr (struct frame_info *next_frame)
{
  return frame_unwind_register_unsigned (next_frame, ALPHA_SP_REGNUM) + 24;
}
