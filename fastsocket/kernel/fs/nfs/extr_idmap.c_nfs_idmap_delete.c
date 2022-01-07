
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_client {struct idmap* cl_idmap; } ;
struct idmap {int idmap_group_hash; int idmap_user_hash; int idmap_dentry; } ;


 int idmap_free_hashtable (int *) ;
 int kfree (struct idmap*) ;
 int rpc_unlink (int ) ;

void
nfs_idmap_delete(struct nfs_client *clp)
{
 struct idmap *idmap = clp->cl_idmap;

 if (!idmap)
  return;
 rpc_unlink(idmap->idmap_dentry);
 clp->cl_idmap = ((void*)0);
 idmap_free_hashtable(&idmap->idmap_user_hash);
 idmap_free_hashtable(&idmap->idmap_group_hash);
 kfree(idmap);
}
