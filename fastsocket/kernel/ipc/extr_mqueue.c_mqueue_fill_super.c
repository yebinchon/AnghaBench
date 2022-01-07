
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct ipc_namespace {int dummy; } ;
struct inode {int dummy; } ;


 int ENOMEM ;
 int MQUEUE_MAGIC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int S_IFDIR ;
 int S_IRWXUGO ;
 int S_ISVTX ;
 int d_alloc_root (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* mqueue_get_inode (struct super_block*,struct ipc_namespace*,int,int *) ;
 int mqueue_super_ops ;

__attribute__((used)) static int mqueue_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *inode;
 struct ipc_namespace *ns = data;
 int error;

 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = MQUEUE_MAGIC;
 sb->s_op = &mqueue_super_ops;

 inode = mqueue_get_inode(sb, ns, S_IFDIR | S_ISVTX | S_IRWXUGO,
    ((void*)0));
 if (!inode) {
  error = -ENOMEM;
  goto out;
 }

 sb->s_root = d_alloc_root(inode);
 if (!sb->s_root) {
  iput(inode);
  error = -ENOMEM;
  goto out;
 }
 error = 0;

out:
 return error;
}
