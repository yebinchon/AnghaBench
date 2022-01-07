
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layoutdriver_type {int dummy; } ;
struct nfs_client {int dummy; } ;
struct nfs4_deviceid {int dummy; } ;
struct nfs4_deviceid_node {int ref; struct nfs4_deviceid deviceid; scalar_t__ flags; struct nfs_client const* nfs_client; struct pnfs_layoutdriver_type const* ld; int tmpnode; int node; } ;


 int INIT_HLIST_NODE (int *) ;
 int atomic_set (int *,int) ;

void
nfs4_init_deviceid_node(struct nfs4_deviceid_node *d,
   const struct pnfs_layoutdriver_type *ld,
   const struct nfs_client *nfs_client,
   const struct nfs4_deviceid *id)
{
 INIT_HLIST_NODE(&d->node);
 INIT_HLIST_NODE(&d->tmpnode);
 d->ld = ld;
 d->nfs_client = nfs_client;
 d->flags = 0;
 d->deviceid = *id;
 atomic_set(&d->ref, 1);
}
