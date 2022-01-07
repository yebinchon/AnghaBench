
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_server {TYPE_1__* fscache_key; int * fscache; } ;
struct TYPE_2__ {int node; } ;


 int FSCACHE ;
 struct nfs_server* NFS_SB (struct super_block*) ;
 int dfprintk (int ,char*,struct nfs_server*,int *) ;
 int fscache_relinquish_cookie (int *,int ) ;
 int kfree (TYPE_1__*) ;
 int nfs_fscache_keys ;
 int nfs_fscache_keys_lock ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void nfs_fscache_release_super_cookie(struct super_block *sb)
{
 struct nfs_server *nfss = NFS_SB(sb);

 dfprintk(FSCACHE, "NFS: releasing superblock cookie (0x%p/0x%p)\n",
   nfss, nfss->fscache);

 fscache_relinquish_cookie(nfss->fscache, 0);
 nfss->fscache = ((void*)0);

 if (nfss->fscache_key) {
  spin_lock(&nfs_fscache_keys_lock);
  rb_erase(&nfss->fscache_key->node, &nfs_fscache_keys);
  spin_unlock(&nfs_fscache_keys_lock);
  kfree(nfss->fscache_key);
  nfss->fscache_key = ((void*)0);
 }
}
