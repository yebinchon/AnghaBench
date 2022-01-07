
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ CORE_ADDR ;



__attribute__((used)) static int
ia64_fbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{
  uint64_t gwpage = 5ULL << 61;
  return (pc >= gwpage && pc < (gwpage + 8192)) ? 1 : 0;
}
