
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef int nfsstat ;
struct TYPE_4__ {int da_fhandle; } ;
struct TYPE_5__ {TYPE_1__ la_to; int la_fhandle; } ;
typedef TYPE_2__ nfslinkargs ;


 int EROFS ;
 int ESTALE ;
 int fh_to_mp (int *) ;
 int nfs_error (int ) ;

nfsstat *
nfsproc_link_2_svc(nfslinkargs *argp, struct svc_req *rqstp)
{
  static nfsstat res;

  if (!fh_to_mp(&argp->la_fhandle) || !fh_to_mp(&argp->la_to.da_fhandle))
    res = nfs_error(ESTALE);
  else
    res = nfs_error(EROFS);

  return &res;
}
