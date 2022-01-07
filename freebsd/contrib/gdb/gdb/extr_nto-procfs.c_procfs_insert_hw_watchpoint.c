
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int procfs_hw_watchpoint (int ,int,int) ;

__attribute__((used)) static int
procfs_insert_hw_watchpoint (CORE_ADDR addr, int len, int type)
{
  return procfs_hw_watchpoint (addr, len, type);
}
