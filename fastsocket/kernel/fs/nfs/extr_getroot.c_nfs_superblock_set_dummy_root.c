
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_root; } ;
struct inode {int i_count; } ;
struct TYPE_2__ {int d_alias; } ;


 int ENOMEM ;
 int atomic_inc (int *) ;
 TYPE_1__* d_alloc_root (struct inode*) ;
 int dcache_lock ;
 int iput (struct inode*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int nfs_superblock_set_dummy_root(struct super_block *sb, struct inode *inode)
{

 if (sb->s_root == ((void*)0)) {
  sb->s_root = d_alloc_root(inode);
  if (sb->s_root == ((void*)0)) {
   iput(inode);
   return -ENOMEM;
  }

  atomic_inc(&inode->i_count);
  spin_lock(&dcache_lock);
  list_del_init(&sb->s_root->d_alias);
  spin_unlock(&dcache_lock);
 }
 return 0;
}
