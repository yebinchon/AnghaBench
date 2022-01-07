
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN_RECURSION_PROTECT () ;
 int END_RECURSION_PROTECT () ;
 int LOCKTH () ;
 int UNLOCKTH () ;
 unsigned int __mf_watch_or_not (void*,size_t,int) ;

unsigned __mf_watch (void *ptr, size_t sz)
{
  unsigned rc;
  LOCKTH ();
  BEGIN_RECURSION_PROTECT ();
  rc = __mf_watch_or_not (ptr, sz, 1);
  END_RECURSION_PROTECT ();
  UNLOCKTH ();
  return rc;
}
