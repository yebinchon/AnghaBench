
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {int cl_count; } ;
struct nfs4_renewdata {struct nfs_client* client; } ;


 int atomic_read (int *) ;
 int kfree (struct nfs4_renewdata*) ;
 int nfs4_schedule_state_renewal (struct nfs_client*) ;
 int nfs_put_client (struct nfs_client*) ;

__attribute__((used)) static void nfs4_renew_release(void *calldata)
{
 struct nfs4_renewdata *data = calldata;
 struct nfs_client *clp = data->client;

 if (atomic_read(&clp->cl_count) > 1)
  nfs4_schedule_state_renewal(clp);
 nfs_put_client(clp);
 kfree(data);
}
