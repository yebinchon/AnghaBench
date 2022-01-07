
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int _DEBUG_BREAK_EXEC ;
 int _DEBUG_BREAK_HW ;
 int procfs_breakpoint (int ,int,int ) ;

__attribute__((used)) static int
procfs_insert_hw_breakpoint (CORE_ADDR addr, char *contents_cache)
{
  return procfs_breakpoint (addr, _DEBUG_BREAK_EXEC | _DEBUG_BREAK_HW, 0);
}
