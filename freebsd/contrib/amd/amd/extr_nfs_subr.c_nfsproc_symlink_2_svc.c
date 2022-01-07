
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_4__ {int da_fhandle; } ;
struct TYPE_5__ {TYPE_1__ sla_from; } ;
typedef TYPE_2__ nfssymlinkargs ;
typedef int nfsstat ;


 int EROFS ;
 int ESTALE ;
 int fh_to_mp (int *) ;
 int nfs_error (int ) ;

nfsstat *
nfsproc_symlink_2_svc(nfssymlinkargs *argp, struct svc_req *rqstp)
{
  static nfsstat res;

  if (!fh_to_mp(&argp->sla_from.da_fhandle))
    res = nfs_error(ESTALE);
  else
    res = nfs_error(EROFS);

  return &res;
}
