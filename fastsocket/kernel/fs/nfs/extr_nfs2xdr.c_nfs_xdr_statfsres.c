
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
struct nfs2_fsstat {void* bavail; void* bfree; void* blocks; void* bsize; void* tsize; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 void* ntohl (int ) ;

__attribute__((used)) static int
nfs_xdr_statfsres(struct rpc_rqst *req, __be32 *p, struct nfs2_fsstat *res)
{
 int status;

 if ((status = ntohl(*p++)))
  return nfs_stat_to_errno(status);

 res->tsize = ntohl(*p++);
 res->bsize = ntohl(*p++);
 res->blocks = ntohl(*p++);
 res->bfree = ntohl(*p++);
 res->bavail = ntohl(*p++);
 return 0;
}
