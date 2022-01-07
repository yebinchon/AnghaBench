
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_rqst {int dummy; } ;
struct nfs_writeres {int fattr; TYPE_1__* verf; } ;
typedef int __be32 ;
struct TYPE_2__ {int committed; } ;


 int NFS_FILE_SYNC ;
 int nfs_xdr_attrstat (struct rpc_rqst*,int *,int ) ;

__attribute__((used)) static int
nfs_xdr_writeres(struct rpc_rqst *req, __be32 *p, struct nfs_writeres *res)
{
 res->verf->committed = NFS_FILE_SYNC;
 return nfs_xdr_attrstat(req, p, res->fattr);
}
