
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VLIW ;
 int mep_process_saved_insns () ;
 scalar_t__ mode ;

void
mep_cleanup (void)
{



  if (mode == VLIW)
    mep_process_saved_insns ();
}
