
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



__attribute__((used)) static int
ppcfbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{
  return (pc >= 0x7fffef00U) ? 1 : 0;
}
