
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTERM ;
 int cleanup (int ) ;
 int exit (int) ;
 int getpid () ;
 int kill (int,int ) ;
 int masterpid ;
 int serverpid ;

void
hlfsd_going_down(int rc)
{
  int mypid = getpid();

  if (mypid == masterpid)
    cleanup(0);
  else if (mypid == serverpid)
    kill(masterpid, SIGTERM);

  exit(rc);
}
