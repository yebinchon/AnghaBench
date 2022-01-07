
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs3_linkres {int dir_attr; int fattr; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;
 int * xdr_decode_post_op_attr (int *,int ) ;
 int * xdr_decode_wcc_data (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_linkres(struct rpc_rqst *req, __be32 *p, struct nfs3_linkres *res)
{
 int status;

 if ((status = ntohl(*p++)) != 0)
  status = nfs_stat_to_errno(status);
 p = xdr_decode_post_op_attr(p, res->fattr);
 p = xdr_decode_wcc_data(p, res->dir_attr);
 return status;
}
