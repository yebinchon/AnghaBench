
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sigtramp_end; } ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;

CORE_ADDR
i386bsd_sigtramp_end (CORE_ADDR pc)
{
  return gdbarch_tdep (current_gdbarch)->sigtramp_end;
}
