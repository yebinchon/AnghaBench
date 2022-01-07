
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;



__attribute__((used)) static int
ppc64_fbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{
  return (pc >= 0x3fffffffffffe000U && pc <= 0x3fffffffffffefffU) ? 1 : 0;
}
