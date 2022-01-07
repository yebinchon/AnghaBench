
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ alpha_extra_func_info_t ;
typedef int CORE_ADDR ;


 scalar_t__ ALPHA_SP_REGNUM ;
 scalar_t__ PROC_FRAME_OFFSET (scalar_t__) ;
 scalar_t__ PROC_FRAME_REG (scalar_t__) ;
 int alpha_after_prologue (int ) ;

__attribute__((used)) static CORE_ADDR
alpha_mdebug_after_prologue (CORE_ADDR pc, alpha_extra_func_info_t proc_desc)
{
  if (proc_desc)
    {


      if (PROC_FRAME_REG (proc_desc) == ALPHA_SP_REGNUM
   && PROC_FRAME_OFFSET (proc_desc) == 0)
 return 0;
    }

  return alpha_after_prologue (pc);
}
