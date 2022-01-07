
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCKTH () ;
 int UNLOCKTH () ;
 unsigned int __mf_watch_or_not (void*,size_t,int ) ;

unsigned __mf_unwatch (void *ptr, size_t sz)
{
  unsigned rc;
  LOCKTH ();
  rc = __mf_watch_or_not (ptr, sz, 0);
  UNLOCKTH ();
  return rc;
}
