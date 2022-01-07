
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef int res ;
struct TYPE_3__ {int rr_status; } ;
typedef TYPE_1__ nfsreadres ;
typedef int nfsreadargs ;


 int EACCES ;
 int memset (char*,int ,int) ;
 int nfs_error (int ) ;

nfsreadres *
nfsproc_read_2_svc(nfsreadargs *argp, struct svc_req *rqstp)
{
  static nfsreadres res;

  memset((char *) &res, 0, sizeof(res));
  res.rr_status = nfs_error(EACCES);

  return &res;
}
