
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_deviceid_node {int ref; int node; int deviceid; int nfs_client; int ld; } ;


 struct nfs4_deviceid_node* _find_get_deviceid (int ,int ,int *,long) ;
 int atomic_inc (int *) ;
 int hlist_add_head_rcu (int *,int *) ;
 int * nfs4_deviceid_cache ;
 long nfs4_deviceid_hash (int *) ;
 int nfs4_deviceid_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct nfs4_deviceid_node *
nfs4_insert_deviceid_node(struct nfs4_deviceid_node *new)
{
 struct nfs4_deviceid_node *d;
 long hash;

 spin_lock(&nfs4_deviceid_lock);
 hash = nfs4_deviceid_hash(&new->deviceid);
 d = _find_get_deviceid(new->ld, new->nfs_client, &new->deviceid, hash);
 if (d) {
  spin_unlock(&nfs4_deviceid_lock);
  return d;
 }

 hlist_add_head_rcu(&new->node, &nfs4_deviceid_cache[hash]);
 spin_unlock(&nfs4_deviceid_lock);
 atomic_inc(&new->ref);

 return new;
}
