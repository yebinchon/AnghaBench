
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGPIPE ;
 scalar_t__ diffpid ;
 int kill (scalar_t__,int ) ;
 scalar_t__ tmpname ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void
cleanup (int signo __attribute__((unused)))
{




  if (tmpname)
    unlink (tmpname);
}
