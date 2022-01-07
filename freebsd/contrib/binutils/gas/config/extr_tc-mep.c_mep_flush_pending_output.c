
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VLIW ;
 int mep_process_saved_insns () ;
 scalar_t__ mode ;
 scalar_t__ pluspresent ;

int
mep_flush_pending_output (void)
{
  if (mode == VLIW)
    {
      mep_process_saved_insns ();
      pluspresent = 0;
    }

  return 1;
}
