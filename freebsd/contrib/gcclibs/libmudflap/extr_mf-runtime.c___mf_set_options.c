
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BEGIN_RECURSION_PROTECT () ;
 int END_RECURSION_PROTECT () ;
 int LOCKTH () ;
 int UNLOCKTH () ;
 int __mfu_set_options (char const*) ;

int
__mf_set_options (const char *optstr)
{
  int rc;
  LOCKTH ();
  BEGIN_RECURSION_PROTECT ();
  rc = __mfu_set_options (optstr);



  END_RECURSION_PROTECT ();
  UNLOCKTH ();
  return rc;
}
