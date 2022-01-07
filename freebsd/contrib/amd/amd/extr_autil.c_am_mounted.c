
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_22__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_17__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_35__ {int mf_flags; int mf_fsflags; char* mf_mount; TYPE_21__* mf_ops; scalar_t__ mf_mopts; } ;
typedef TYPE_8__ mntfs ;
struct TYPE_36__ {scalar_t__ mnt_opts; } ;
typedef TYPE_9__ mntent_t ;
struct TYPE_34__ {scalar_t__ na_type; int na_mtime; int na_size; } ;
struct TYPE_29__ {int s_mtime; } ;
struct TYPE_24__ {int am_flags; char* am_link; TYPE_7__ am_fattr; TYPE_6__* am_parent; TYPE_2__ am_stats; int am_timeo; int am_path; TYPE_1__* am_al; } ;
typedef TYPE_10__ am_node ;
struct TYPE_32__ {int na_mtime; } ;
struct TYPE_33__ {TYPE_5__ am_fattr; TYPE_4__* am_al; int am_path; } ;
struct TYPE_31__ {TYPE_3__* al_mnt; } ;
struct TYPE_30__ {int mf_fsflags; } ;
struct TYPE_28__ {int d_mok; } ;
struct TYPE_27__ {int (* mount_fs ) (TYPE_10__*,TYPE_8__*) ;} ;
struct TYPE_26__ {TYPE_8__* al_mnt; } ;
struct TYPE_25__ {int am_timeo; } ;


 int AMF_AUTOFS ;
 int AMF_NOTIMEOUT ;
 int FS_DIRECT ;
 int FS_NOTIMEOUT ;
 int MFF_IS_AUTOFS ;
 scalar_t__ NFLNK ;
 int TRUE ;
 int XLOG_INFO ;
 TYPE_22__ amd_stats ;
 TYPE_21__ amfs_link_ops ;
 scalar_t__ amu_hasmntopt (TYPE_9__*,char*) ;
 int autofs_mount_succeeded (TYPE_10__*) ;
 int autofs_mounted (TYPE_10__*) ;
 int clocktime (int *) ;
 TYPE_17__ gopt ;
 int hasmntval (TYPE_9__*,char*) ;
 int mf_mounted (TYPE_8__*,int ) ;
 int new_ttl (TYPE_10__*) ;
 int nfs_quick_reply (TYPE_10__*,int ) ;
 int plog (int ,char*,int ,...) ;
 int str3cat (int ,int ,char*,char*) ;
 int strlen (char*) ;
 int stub1 (TYPE_10__*,TYPE_8__*) ;

void
am_mounted(am_node *mp)
{
  int notimeout = 0;
  mntfs *mf = mp->am_al->al_mnt;






  mf_mounted(mf, TRUE);
  if (mp->am_parent && mp->am_parent->am_al->al_mnt->mf_fsflags & FS_DIRECT)
    mp->am_path = str3cat(mp->am_path, mp->am_parent->am_path, "/", ".");






  if (mf->mf_fsflags & FS_NOTIMEOUT)
    notimeout = 1;


  if (mf->mf_mopts) {
    mntent_t mnt;
    mnt.mnt_opts = mf->mf_mopts;


    if (amu_hasmntopt(&mnt, "unmount") || amu_hasmntopt(&mnt, "umount"))
      notimeout = 0;

    if (amu_hasmntopt(&mnt, "nounmount") || amu_hasmntopt(&mnt, "noumount"))
      notimeout = 1;

    if ((mp->am_timeo = hasmntval(&mnt, "utimeout")) == 0)
      mp->am_timeo = gopt.am_timeo;
    else
      notimeout = 0;

    if (mf->mf_mount[0] == '/' && mf->mf_mount[1] == '\0')
      notimeout = 1;
  }

  if (notimeout) {
    mp->am_flags |= AMF_NOTIMEOUT;
    plog(XLOG_INFO, "%s set to never timeout", mp->am_path);
  } else {
    mp->am_flags &= ~AMF_NOTIMEOUT;
    plog(XLOG_INFO, "%s set to timeout in %d seconds", mp->am_path, mp->am_timeo);
  }





  if (mp->am_fattr.na_type == NFLNK)
    mp->am_fattr.na_size = strlen(mp->am_link ? mp->am_link : mf->mf_mount);




  mp->am_stats.s_mtime = clocktime(&mp->am_fattr.na_mtime);
  new_ttl(mp);




  if (mp->am_parent && mp->am_parent->am_al->al_mnt)
    mp->am_parent->am_fattr.na_mtime = mp->am_fattr.na_mtime;






  if (mp->am_link && mf->mf_ops != &amfs_link_ops)
    amfs_link_ops.mount_fs(mp, mf);
    nfs_quick_reply(mp, 0);




  amd_stats.d_mok++;
}
