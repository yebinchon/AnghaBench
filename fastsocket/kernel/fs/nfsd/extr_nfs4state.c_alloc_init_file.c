
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_had_conflict; int fi_hash; int fi_access; int fi_fds; scalar_t__ fi_id; int fi_inode; int fi_delegations; int fi_stateids; int fi_ref; } ;
struct inode {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int current_fileid ;
 int * file_hashtbl ;
 unsigned int file_hashval (struct inode*) ;
 int file_slab ;
 int igrab (struct inode*) ;
 struct nfs4_file* kmem_cache_alloc (int ,int ) ;
 int list_add (int *,int *) ;
 int memset (int ,int ,int) ;
 int recall_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline struct nfs4_file *
alloc_init_file(struct inode *ino)
{
 struct nfs4_file *fp;
 unsigned int hashval = file_hashval(ino);

 fp = kmem_cache_alloc(file_slab, GFP_KERNEL);
 if (fp) {
  atomic_set(&fp->fi_ref, 1);
  INIT_LIST_HEAD(&fp->fi_hash);
  INIT_LIST_HEAD(&fp->fi_stateids);
  INIT_LIST_HEAD(&fp->fi_delegations);
  fp->fi_inode = igrab(ino);
  fp->fi_id = current_fileid++;
  fp->fi_had_conflict = 0;
  memset(fp->fi_fds, 0, sizeof(fp->fi_fds));
  memset(fp->fi_access, 0, sizeof(fp->fi_access));
  spin_lock(&recall_lock);
  list_add(&fp->fi_hash, &file_hashtbl[hashval]);
  spin_unlock(&recall_lock);
  return fp;
 }
 return ((void*)0);
}
