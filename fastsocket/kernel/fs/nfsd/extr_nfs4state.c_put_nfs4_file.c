
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_inode; int fi_hash; int fi_ref; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int file_slab ;
 int iput (int ) ;
 int kmem_cache_free (int ,struct nfs4_file*) ;
 int list_del (int *) ;
 int recall_lock ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
put_nfs4_file(struct nfs4_file *fi)
{
 if (atomic_dec_and_lock(&fi->fi_ref, &recall_lock)) {
  list_del(&fi->fi_hash);
  spin_unlock(&recall_lock);
  iput(fi->fi_inode);
  kmem_cache_free(file_slab, fi);
 }
}
