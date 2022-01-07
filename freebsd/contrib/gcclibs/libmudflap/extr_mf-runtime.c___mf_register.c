
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN_RECURSION_PROTECT () ;
 int END_RECURSION_PROTECT () ;
 int LOCKTH () ;
 int UNLOCKTH () ;
 int __mfu_register (void*,size_t,int,char const*) ;

void
__mf_register (void *ptr, size_t sz, int type, const char *name)
{
  LOCKTH ();
  BEGIN_RECURSION_PROTECT ();
  __mfu_register (ptr, sz, type, name);
  END_RECURSION_PROTECT ();
  UNLOCKTH ();
}
