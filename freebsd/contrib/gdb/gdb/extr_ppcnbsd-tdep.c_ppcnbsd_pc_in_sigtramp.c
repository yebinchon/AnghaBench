
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int nbsd_pc_in_sigtramp (int ,char*) ;

__attribute__((used)) static int
ppcnbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{

  return (nbsd_pc_in_sigtramp (pc, func_name));
}
