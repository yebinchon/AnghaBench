
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* voidp ;
struct TYPE_12__ {int np_ping; scalar_t__ np_ttl; int np_error; int np_xid; } ;
typedef TYPE_2__ nfs_private ;
struct TYPE_11__ {int fs_flags; int fs_host; scalar_t__ fs_private; } ;
typedef TYPE_1__ fserver ;


 int FSF_DOWN ;
 int FSF_VALID ;
 int FSF_WANT ;
 scalar_t__ FSRV_ISUP (TYPE_1__*) ;
 int MAX_ALLOWED_PINGS ;
 int XID_ALLOC () ;
 int check_fs_addr_change (TYPE_1__*) ;
 scalar_t__ clocktime (int *) ;
 int dlog (char*,...) ;
 int flush_nfs_fhandle_cache (TYPE_1__*) ;
 int nfs_keepalive (TYPE_1__*) ;
 int srvrlog (TYPE_1__*,char*) ;
 int wakeup_srvr (TYPE_1__*) ;

__attribute__((used)) static void
nfs_keepalive_timeout(voidp v)
{
  fserver *fs = v;
  nfs_private *np = (nfs_private *) fs->fs_private;




  np->np_ping++;
  if (np->np_ping > 1)
    srvrlog(fs, "not responding");




  if (FSRV_ISUP(fs))
    fs->fs_flags &= ~FSF_VALID;




  if (np->np_ttl < clocktime(((void*)0))) {
    int oflags = fs->fs_flags;
    dlog("ttl has expired");
    if ((fs->fs_flags & FSF_DOWN) == 0) {



      srvrlog(fs, "is down");
      fs->fs_flags |= FSF_DOWN | FSF_VALID;





      flush_nfs_fhandle_cache(fs);
      np->np_error = -1;
      check_fs_addr_change(fs);
    } else {



      if ((fs->fs_flags & FSF_VALID) == 0)
 srvrlog(fs, "starts down");
      fs->fs_flags |= FSF_VALID;
    }
    if (oflags != fs->fs_flags && (fs->fs_flags & FSF_WANT))
      wakeup_srvr(fs);



    np->np_ping = 0;
  } else {
    if (np->np_ping > 1)
      dlog("%d pings to %s failed - at most %d allowed", np->np_ping, fs->fs_host, MAX_ALLOWED_PINGS);
  }





  np->np_xid = XID_ALLOC();




  nfs_keepalive(fs);
}
