
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
procfs_can_use_hw_breakpoint (int type, int cnt, int othertype)
{
  return 1;
}
