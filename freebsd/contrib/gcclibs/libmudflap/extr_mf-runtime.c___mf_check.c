
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN_RECURSION_PROTECT () ;
 int END_RECURSION_PROTECT () ;
 int LOCKTH () ;
 int UNLOCKTH () ;
 int __mfu_check (void*,size_t,int,char const*) ;

void __mf_check (void *ptr, size_t sz, int type, const char *location)
{
  LOCKTH ();
  BEGIN_RECURSION_PROTECT ();
  __mfu_check (ptr, sz, type, location);
  END_RECURSION_PROTECT ();
  UNLOCKTH ();
}
