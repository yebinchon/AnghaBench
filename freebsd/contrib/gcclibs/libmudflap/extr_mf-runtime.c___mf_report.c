
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN_RECURSION_PROTECT () ;
 int END_RECURSION_PROTECT () ;
 int LOCKTH () ;
 int UNLOCKTH () ;
 int __mfu_report () ;

void
__mf_report ()
{
  LOCKTH ();
  BEGIN_RECURSION_PROTECT ();
  __mfu_report ();
  END_RECURSION_PROTECT ();
  UNLOCKTH ();
}
