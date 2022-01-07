
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ i386bsd_pc_in_sigtramp (int,int *) ;
 int i386bsd_sigtramp_end (int) ;
 int i386obsd_page_size ;

__attribute__((used)) static CORE_ADDR
i386obsd_sigtramp_end (CORE_ADDR pc)
{
  CORE_ADDR start_pc = (pc & ~(i386obsd_page_size - 1));

  if (i386bsd_pc_in_sigtramp (pc, ((void*)0)))
    return i386bsd_sigtramp_end (pc);

  return start_pc + 0x22;
}
