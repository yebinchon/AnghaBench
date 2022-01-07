
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef int nfsstat ;
struct TYPE_6__ {int da_name; int da_fhandle; } ;
struct TYPE_5__ {int da_fhandle; } ;
struct TYPE_7__ {TYPE_2__ rna_to; TYPE_1__ rna_from; } ;
typedef TYPE_3__ nfsrenameargs ;


 int EROFS ;
 int ESTALE ;
 int NFS_OK ;
 scalar_t__ NSTREQ (int ,char*,int) ;
 int fh_to_mp (int *) ;
 int nfs_error (int ) ;

nfsstat *
nfsproc_rename_2_svc(nfsrenameargs *argp, struct svc_req *rqstp)
{
  static nfsstat res;

  if (!fh_to_mp(&argp->rna_from.da_fhandle) || !fh_to_mp(&argp->rna_to.da_fhandle))
    res = nfs_error(ESTALE);




  else if (NSTREQ(argp->rna_to.da_name, ".nfs", 4))
    res = NFS_OK;



  else
    res = nfs_error(EROFS);

  return &res;
}
