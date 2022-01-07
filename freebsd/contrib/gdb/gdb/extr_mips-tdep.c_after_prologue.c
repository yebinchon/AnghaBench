
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ end; } ;
typedef scalar_t__ mips_extra_func_info_t ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ PROC_FRAME_OFFSET (scalar_t__) ;
 scalar_t__ PROC_FRAME_REG (scalar_t__) ;
 scalar_t__ SP_REGNUM ;
 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;
 scalar_t__ find_proc_desc (scalar_t__,int *,int ) ;

__attribute__((used)) static CORE_ADDR
after_prologue (CORE_ADDR pc, mips_extra_func_info_t proc_desc)
{
  struct symtab_and_line sal;
  CORE_ADDR func_addr, func_end;






  if (!proc_desc)
    proc_desc = find_proc_desc (pc, ((void*)0), 0);

  if (proc_desc)
    {


      if (PROC_FRAME_REG (proc_desc) == SP_REGNUM
   && PROC_FRAME_OFFSET (proc_desc) == 0)
 return 0;
    }

  if (!find_pc_partial_function (pc, ((void*)0), &func_addr, &func_end))
    return 0;

  sal = find_pc_line (func_addr, 0);

  if (sal.end < func_end)
    return sal.end;




  return 0;
}
