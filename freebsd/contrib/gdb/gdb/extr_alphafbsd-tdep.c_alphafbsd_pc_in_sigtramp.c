
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CORE_ADDR ;


 scalar_t__ alphafbsd_sigtramp_end ;
 scalar_t__ alphafbsd_sigtramp_start ;

__attribute__((used)) static int
alphafbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{
  return (pc >= alphafbsd_sigtramp_start && pc < alphafbsd_sigtramp_end);
}
