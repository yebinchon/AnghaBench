
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_time {int dummy; } ;
struct pex_obj {int dummy; } ;


 int SIGTERM ;
 int errno ;
 int kill (long,int ) ;
 scalar_t__ pex_wait (struct pex_obj*,long,int*,struct pex_time*) ;

__attribute__((used)) static int
pex_unix_wait (struct pex_obj *obj, long pid, int *status,
        struct pex_time *time, int done, const char **errmsg,
        int *err)
{


  if (done)
    kill (pid, SIGTERM);

  if (pex_wait (obj, pid, status, time) < 0)
    {
      *err = errno;
      *errmsg = "wait";
      return -1;
    }

  return 0;
}
