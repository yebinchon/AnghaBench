
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_client {int fscache; } ;
struct TYPE_2__ {int primary_index; } ;


 int FSCACHE ;
 int dfprintk (int ,char*,struct nfs_client*,int ) ;
 int fscache_acquire_cookie (int ,int *,struct nfs_client*) ;
 TYPE_1__ nfs_fscache_netfs ;
 int nfs_fscache_server_index_def ;

void nfs_fscache_get_client_cookie(struct nfs_client *clp)
{

 clp->fscache = fscache_acquire_cookie(nfs_fscache_netfs.primary_index,
           &nfs_fscache_server_index_def,
           clp);
 dfprintk(FSCACHE, "NFS: get client cookie (0x%p/0x%p)\n",
   clp, clp->fscache);
}
