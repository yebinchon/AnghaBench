
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct svc_req {int dummy; } ;
struct TYPE_22__ {int sfrok_tsize; int sfrok_bsize; scalar_t__ sfrok_bavail; scalar_t__ sfrok_bfree; scalar_t__ sfrok_blocks; } ;
struct TYPE_17__ {TYPE_6__ sfr_reply_u; } ;
struct TYPE_21__ {int sfr_status; TYPE_1__ sfr_u; } ;
typedef TYPE_5__ nfsstatfsres ;
typedef TYPE_6__ nfsstatfsokres ;
struct TYPE_23__ {scalar_t__ mnt_opts; } ;
typedef TYPE_7__ mntent_t ;
struct TYPE_20__ {int s_statfs; } ;
struct TYPE_24__ {TYPE_4__ am_stats; TYPE_3__* am_al; int am_path; } ;
typedef TYPE_8__ am_node ;
typedef int am_nfs_fh ;
struct TYPE_19__ {TYPE_2__* al_mnt; } ;
struct TYPE_18__ {scalar_t__ mf_mopts; } ;
struct TYPE_16__ {int d_drops; } ;
struct TYPE_15__ {int flags; } ;


 int CFM_SHOW_STATFS_ENTRIES ;
 int D_TRACE ;
 int NFS_OK ;
 int VLOOK_CREATE ;
 int XLOG_DEBUG ;
 TYPE_14__ amd_stats ;
 scalar_t__ amuDebug (int ) ;
 scalar_t__ amu_hasmntopt (TYPE_7__*,char*) ;
 int count_map_entries (TYPE_8__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 TYPE_8__* fh_to_mp3 (int *,int*,int ) ;
 TYPE_10__ gopt ;
 int nfs_error (int) ;
 int plog (int ,char*,...) ;

nfsstatfsres *
nfsproc_statfs_2_svc(am_nfs_fh *argp, struct svc_req *rqstp)
{
  static nfsstatfsres res;
  am_node *mp;
  int retry;
  mntent_t mnt;

  if (amuDebug(D_TRACE))
    plog(XLOG_DEBUG, "statfs:");

  mp = fh_to_mp3(argp, &retry, VLOOK_CREATE);
  if (mp == ((void*)0)) {
    if (retry < 0) {
      amd_stats.d_drops++;
      return 0;
    }
    res.sfr_status = nfs_error(retry);
  } else {
    nfsstatfsokres *fp;
    if (amuDebug(D_TRACE))
      plog(XLOG_DEBUG, "\tstat_fs(%s)", mp->am_path);




    fp = &res.sfr_u.sfr_reply_u;

    fp->sfrok_tsize = 1024;
    fp->sfrok_bsize = 1024;


    if ((gopt.flags & CFM_SHOW_STATFS_ENTRIES) &&
 mp->am_al->al_mnt && mp->am_al->al_mnt->mf_mopts) {
      mnt.mnt_opts = mp->am_al->al_mnt->mf_mopts;
      if (amu_hasmntopt(&mnt, "browsable")) {
 count_map_entries(mp,
     &fp->sfrok_blocks,
     &fp->sfrok_bfree,
     &fp->sfrok_bavail);
      }
    } else {
      fp->sfrok_blocks = 0;
      fp->sfrok_bfree = 0;
      fp->sfrok_bavail = 0;
    }

    res.sfr_status = NFS_OK;
    mp->am_stats.s_statfs++;
  }

  return &res;
}
