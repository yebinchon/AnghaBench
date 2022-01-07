
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN_RECURSION_PROTECT () ;
 int END_RECURSION_PROTECT () ;
 int LOCKTH () ;
 int UNLOCKTH () ;
 int __mfu_unregister (void*,size_t,int) ;

void
__mf_unregister (void *ptr, size_t sz, int type)
{
  LOCKTH ();
  BEGIN_RECURSION_PROTECT ();
  __mfu_unregister (ptr, sz, type);
  END_RECURSION_PROTECT ();
  UNLOCKTH ();
}
