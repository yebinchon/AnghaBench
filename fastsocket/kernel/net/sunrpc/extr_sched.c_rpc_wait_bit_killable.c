
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERESTARTSYS ;
 int current ;
 scalar_t__ fatal_signal_pending (int ) ;
 int freezable_schedule () ;

__attribute__((used)) static int rpc_wait_bit_killable(void *word)
{
 if (fatal_signal_pending(current))
  return -ERESTARTSYS;
 freezable_schedule();
 return 0;
}
