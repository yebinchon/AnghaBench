
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int dummy; } ;
typedef int __be32 ;


 int nfs_stat_to_errno (int) ;
 int ntohl (int ) ;

__attribute__((used)) static int
nfs_xdr_stat(struct rpc_rqst *req, __be32 *p, void *dummy)
{
 int status;

 if ((status = ntohl(*p++)) != 0)
  status = nfs_stat_to_errno(status);
 return status;
}
