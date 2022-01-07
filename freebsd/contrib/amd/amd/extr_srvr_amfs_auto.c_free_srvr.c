
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_5__ {scalar_t__ fs_refc; int fs_flags; scalar_t__ fs_cid; int fs_host; } ;
typedef TYPE_1__ fserver ;


 int AM_TTL ;
 int FSF_DOWN ;
 int FSF_PINGING ;
 int FSF_VALID ;
 scalar_t__ FSRV_ERROR (TYPE_1__*) ;
 scalar_t__ FSRV_ISDOWN (TYPE_1__*) ;
 int dlog (char*,int ,int) ;
 scalar_t__ timeout (int,int ,int ) ;
 int timeout_srvr ;
 int untimeout (scalar_t__) ;

void
free_srvr(fserver *fs)
{
  if (--fs->fs_refc == 0) {






    int ttl = (FSRV_ERROR(fs) || FSRV_ISDOWN(fs)) ? 19 : AM_TTL;

    dlog("Last hard reference to file server %s - will timeout in %ds", fs->fs_host, ttl);
    if (fs->fs_cid) {
      untimeout(fs->fs_cid);



      fs->fs_flags &= ~FSF_PINGING;
    }




    fs->fs_cid = timeout(ttl, timeout_srvr, (voidp) fs);




    fs->fs_flags &= ~FSF_VALID;
    fs->fs_flags |= FSF_DOWN;
  }
}
