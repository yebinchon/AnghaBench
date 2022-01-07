
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ fbsd_pc_in_sigtramp (int ,char*) ;
 scalar_t__ mipsfbsd_sigtramp_offset (int ) ;

__attribute__((used)) static int
mipsfbsd_pc_in_sigtramp (CORE_ADDR pc, char *func_name)
{
  return (fbsd_pc_in_sigtramp (pc, func_name)
   || mipsfbsd_sigtramp_offset (pc) >= 0);
}
