
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int fs_flags; int fs_pinger; scalar_t__ fs_cid; int fs_host; } ;
typedef TYPE_1__ fserver ;


 int AM_PINGER ;
 int FSF_DOWN ;
 int FSF_PINGING ;
 int FSF_PING_UNINIT ;
 int FSF_VALID ;
 int XLOG_INFO ;
 int dlog (char*,int ) ;
 int nfs_keepalive (TYPE_1__*) ;
 int plog (int ,char*,int ,int,...) ;
 int srvrlog (TYPE_1__*,char*) ;
 int untimeout (scalar_t__) ;

__attribute__((used)) static void
start_nfs_pings(fserver *fs, int pingval)
{
  if (pingval == 0)
    pingval = AM_PINGER;

  if (fs->fs_flags & FSF_PING_UNINIT) {
    fs->fs_flags &= ~FSF_PING_UNINIT;
    plog(XLOG_INFO, "initializing %s's pinger to %d sec", fs->fs_host, pingval);
    goto do_pings;
  }

  if ((fs->fs_flags & FSF_PINGING) && fs->fs_pinger == pingval) {
    dlog("already running pings to %s", fs->fs_host);
    return;
  }


  plog(XLOG_INFO, "changing %s's ping value from %d%s to %d%s",
       fs->fs_host,
       fs->fs_pinger, (fs->fs_pinger < 0 ? " (off)" : ""),
       pingval, (pingval < 0 ? " (off)" : ""));
 do_pings:
  fs->fs_pinger = pingval;

  if (fs->fs_cid)
    untimeout(fs->fs_cid);
  if (pingval < 0) {
    srvrlog(fs, "wired up (pings disabled)");
    fs->fs_flags |= FSF_VALID;
    fs->fs_flags &= ~FSF_DOWN;
  } else {
    fs->fs_flags |= FSF_PINGING;
    nfs_keepalive(fs);
  }
}
