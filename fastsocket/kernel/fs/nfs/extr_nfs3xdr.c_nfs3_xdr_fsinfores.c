
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs_fsinfo {scalar_t__ lease_time; int time_delta; int maxfilesize; void* dtpref; void* wtmult; void* wtpref; void* wtmax; void* rtmult; void* rtpref; void* rtmax; int fattr; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 void* ntohl (int ) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_decode_post_op_attr (int *,int ) ;
 int * xdr_decode_time3 (int *,int *) ;

__attribute__((used)) static int
nfs3_xdr_fsinfores(struct rpc_rqst *req, __be32 *p, struct nfs_fsinfo *res)
{
 int status;

 status = ntohl(*p++);

 p = xdr_decode_post_op_attr(p, res->fattr);
 if (status != 0)
  return nfs_stat_to_errno(status);

 res->rtmax = ntohl(*p++);
 res->rtpref = ntohl(*p++);
 res->rtmult = ntohl(*p++);
 res->wtmax = ntohl(*p++);
 res->wtpref = ntohl(*p++);
 res->wtmult = ntohl(*p++);
 res->dtpref = ntohl(*p++);
 p = xdr_decode_hyper(p, &res->maxfilesize);
 p = xdr_decode_time3(p, &res->time_delta);


 res->lease_time = 0;
 return 0;
}
