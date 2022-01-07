
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct svc_req {int dummy; } ;
struct TYPE_7__ {void* dr_status; } ;
typedef TYPE_2__ nfsdiropres ;
struct TYPE_6__ {int da_fhandle; } ;
struct TYPE_8__ {TYPE_1__ ca_where; } ;
typedef TYPE_3__ nfscreateargs ;


 int EROFS ;
 int ESTALE ;
 int fh_to_mp (int *) ;
 void* nfs_error (int ) ;

nfsdiropres *
nfsproc_mkdir_2_svc(nfscreateargs *argp, struct svc_req *rqstp)
{
  static nfsdiropres res;

  if (!fh_to_mp(&argp->ca_where.da_fhandle))
    res.dr_status = nfs_error(ESTALE);
  else
    res.dr_status = nfs_error(EROFS);

  return &res;
}
