
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {TYPE_1__* pnfs_curr_ld; TYPE_2__* nfs_client; } ;
struct TYPE_4__ {int cl_mds_count; } ;
struct TYPE_3__ {int owner; int (* clear_layoutdriver ) (struct nfs_server*) ;} ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int module_put (int ) ;
 int nfs4_deviceid_purge_client (TYPE_2__*) ;
 int stub1 (struct nfs_server*) ;

void
unset_pnfs_layoutdriver(struct nfs_server *nfss)
{
 if (nfss->pnfs_curr_ld) {
  if (nfss->pnfs_curr_ld->clear_layoutdriver)
   nfss->pnfs_curr_ld->clear_layoutdriver(nfss);

  if (atomic_dec_and_test(&nfss->nfs_client->cl_mds_count))
   nfs4_deviceid_purge_client(nfss->nfs_client);
  module_put(nfss->pnfs_curr_ld->owner);
 }
 nfss->pnfs_curr_ld = ((void*)0);
}
