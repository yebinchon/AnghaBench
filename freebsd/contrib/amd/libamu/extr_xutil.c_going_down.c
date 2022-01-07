
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Done ;
 scalar_t__ Start ;
 int XLOG_INFO ;
 scalar_t__ amd_state ;
 int dlog (char*,int) ;
 int exit (int) ;
 scalar_t__ foreground ;
 int plog (int ,char*,int) ;
 int unlock_mntlist () ;
 int unregister_amq () ;

void
going_down(int rc)
{
  if (foreground) {
    if (amd_state != Start) {
      if (amd_state != Done)
 return;
      unregister_amq();
    }
  }
  if (foreground) {
    plog(XLOG_INFO, "Finishing with status %d", rc);
  } else {
    dlog("background process exiting with status %d", rc);
  }

  exit(rc);
}
