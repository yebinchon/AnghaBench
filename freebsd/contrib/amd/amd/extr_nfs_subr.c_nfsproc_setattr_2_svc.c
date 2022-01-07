
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_5__ {int sag_fhandle; } ;
typedef TYPE_1__ nfssattrargs ;
struct TYPE_6__ {void* ns_status; } ;
typedef TYPE_2__ nfsattrstat ;


 int EROFS ;
 int ESTALE ;
 int fh_to_mp (int *) ;
 void* nfs_error (int ) ;

nfsattrstat *
nfsproc_setattr_2_svc(nfssattrargs *argp, struct svc_req *rqstp)
{
  static nfsattrstat res;

  if (!fh_to_mp(&argp->sag_fhandle))
    res.ns_status = nfs_error(ESTALE);
  else
    res.ns_status = nfs_error(EROFS);

  return &res;
}
