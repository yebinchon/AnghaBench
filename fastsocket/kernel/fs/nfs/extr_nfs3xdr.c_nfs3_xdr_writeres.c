
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_rqst {int dummy; } ;
struct nfs_writeres {int count; TYPE_1__* verf; int fattr; } ;
typedef enum nfs3_stable_how { ____Placeholder_nfs3_stable_how } nfs3_stable_how ;
typedef int __be32 ;
struct TYPE_2__ {int committed; int * verifier; } ;


 int nfs_stat_to_errno (int) ;
 void* ntohl (int ) ;
 int * xdr_decode_wcc_data (int *,int ) ;

__attribute__((used)) static int
nfs3_xdr_writeres(struct rpc_rqst *req, __be32 *p, struct nfs_writeres *res)
{
 int status;

 status = ntohl(*p++);
 p = xdr_decode_wcc_data(p, res->fattr);

 if (status != 0)
  return nfs_stat_to_errno(status);

 res->count = ntohl(*p++);
 res->verf->committed = (enum nfs3_stable_how)ntohl(*p++);
 res->verf->verifier[0] = *p++;
 res->verf->verifier[1] = *p++;

 return res->count;
}
