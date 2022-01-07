
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct svc_req {int dummy; } ;
typedef int nfsstat ;
struct TYPE_18__ {int da_name; int da_fhandle; } ;
typedef TYPE_5__ nfsdiropargs ;
struct TYPE_14__ {scalar_t__ na_type; } ;
struct TYPE_19__ {TYPE_4__* am_al; int am_path; TYPE_1__ am_fattr; } ;
typedef TYPE_6__ am_node ;
struct TYPE_17__ {TYPE_3__* al_mnt; } ;
struct TYPE_16__ {TYPE_2__* mf_ops; } ;
struct TYPE_15__ {TYPE_6__* (* lookup_child ) (TYPE_6__*,int ,int*,int ) ;} ;
struct TYPE_13__ {int d_drops; } ;


 int D_TRACE ;
 int ENOENT ;
 int ENOTDIR ;
 scalar_t__ NFDIR ;
 int NFS_OK ;
 int VLOOK_DELETE ;
 int XLOG_DEBUG ;
 TYPE_12__ amd_stats ;
 scalar_t__ amuDebug (int ) ;
 TYPE_6__* fh_to_mp3 (int *,int*,int ) ;
 int forcibly_timeout_mp (TYPE_6__*) ;
 int nfs_error (int) ;
 int plog (int ,char*,int ,int ) ;
 TYPE_6__* stub1 (TYPE_6__*,int ,int*,int ) ;

__attribute__((used)) static nfsstat *
unlink_or_rmdir(nfsdiropargs *argp, struct svc_req *rqstp, int unlinkp)
{
  static nfsstat res;
  int retry;

  am_node *mp = fh_to_mp3(&argp->da_fhandle, &retry, VLOOK_DELETE);
  if (mp == ((void*)0)) {
    if (retry < 0) {
      amd_stats.d_drops++;
      return 0;
    }
    res = nfs_error(retry);
    goto out;
  }

  if (mp->am_fattr.na_type != NFDIR) {
    res = nfs_error(ENOTDIR);
    goto out;
  }

  if (amuDebug(D_TRACE))
    plog(XLOG_DEBUG, "\tremove(%s, %s)", mp->am_path, argp->da_name);

  mp = mp->am_al->al_mnt->mf_ops->lookup_child(mp, argp->da_name, &retry, VLOOK_DELETE);
  if (mp == ((void*)0)) {



    if (retry < 0)
      retry = 0;



    else if (retry == ENOENT)
      retry = 0;
    res = nfs_error(retry);
  } else {
    forcibly_timeout_mp(mp);
    res = NFS_OK;
  }

out:
  return &res;
}
