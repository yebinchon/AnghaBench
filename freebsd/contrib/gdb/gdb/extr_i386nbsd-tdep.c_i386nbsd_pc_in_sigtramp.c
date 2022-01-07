
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ i386nbsd_sigtramp_offset (int ) ;
 scalar_t__ nbsd_pc_in_sigtramp (int ,char*) ;

__attribute__((used)) static int
i386nbsd_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  return (nbsd_pc_in_sigtramp (pc, name)
   || i386nbsd_sigtramp_offset (pc) >= 0);
}
