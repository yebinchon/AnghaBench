
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layoutdriver_type {int dummy; } ;
struct nfs_client {int dummy; } ;
struct nfs4_deviceid_node {int ref; } ;
struct nfs4_deviceid {int dummy; } ;


 struct nfs4_deviceid_node* _lookup_deviceid (struct pnfs_layoutdriver_type const*,struct nfs_client const*,struct nfs4_deviceid const*,long) ;
 int atomic_inc (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct nfs4_deviceid_node *
_find_get_deviceid(const struct pnfs_layoutdriver_type *ld,
     const struct nfs_client *clp, const struct nfs4_deviceid *id,
     long hash)
{
 struct nfs4_deviceid_node *d;

 rcu_read_lock();
 d = _lookup_deviceid(ld, clp, id, hash);
 if (d != ((void*)0))
  atomic_inc(&d->ref);
 rcu_read_unlock();
 return d;
}
