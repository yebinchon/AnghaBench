
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_req {int dummy; } ;
typedef int nfsstat ;
typedef int nfsdiropargs ;


 int FALSE ;
 int * unlink_or_rmdir (int *,struct svc_req*,int ) ;

nfsstat *
nfsproc_rmdir_2_svc(nfsdiropargs *argp, struct svc_req *rqstp)
{
  return unlink_or_rmdir(argp, rqstp, FALSE);
}
