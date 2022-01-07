
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int AMD64_RSP_REGNUM ;
 scalar_t__ frame_unwind_register_unsigned (struct frame_info*,int ) ;

__attribute__((used)) static CORE_ADDR
amd64fbsd_sigcontext_addr (struct frame_info *next_frame)
{
  CORE_ADDR sp;




  sp = frame_unwind_register_unsigned (next_frame, AMD64_RSP_REGNUM);
  return sp + 16;
}
