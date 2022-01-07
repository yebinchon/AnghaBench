
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RETSIGTYPE ;


 scalar_t__ Run ;
 int SIGHUP ;
 scalar_t__ amd_state ;
 int dlog (char*) ;
 scalar_t__ do_mapc_reload ;
 int signal (int,int (*) (int)) ;

__attribute__((used)) static RETSIGTYPE
sighup(int sig)
{




  if (sig != SIGHUP)
    dlog("spurious call to sighup");



  if (amd_state == Run)
    do_mapc_reload = 0;
}
