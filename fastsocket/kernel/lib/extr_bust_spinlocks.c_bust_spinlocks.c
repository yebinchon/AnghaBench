
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int console_unblank () ;
 scalar_t__ oops_in_progress ;
 int unblank_screen () ;
 int wake_up_klogd () ;

void __attribute__((weak)) bust_spinlocks(int yes)
{
 if (yes) {
  ++oops_in_progress;
 } else {



  console_unblank();
  if (--oops_in_progress == 0)
   wake_up_klogd();
 }
}
