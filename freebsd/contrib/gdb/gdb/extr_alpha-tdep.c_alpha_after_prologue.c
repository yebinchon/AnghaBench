
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab_and_line {scalar_t__ end; } ;
typedef scalar_t__ CORE_ADDR ;


 struct symtab_and_line find_pc_line (scalar_t__,int ) ;
 int find_pc_partial_function (scalar_t__,int *,scalar_t__*,scalar_t__*) ;

CORE_ADDR
alpha_after_prologue (CORE_ADDR pc)
{
  struct symtab_and_line sal;
  CORE_ADDR func_addr, func_end;

  if (!find_pc_partial_function (pc, ((void*)0), &func_addr, &func_end))
    return 0;

  sal = find_pc_line (func_addr, 0);
  if (sal.end < func_end)
    return sal.end;



  return 0;
}
