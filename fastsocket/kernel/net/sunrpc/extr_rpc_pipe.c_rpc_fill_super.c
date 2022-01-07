
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int RPCAUTH_GSSMAGIC ;
 int RPCAUTH_RootEOF ;
 int RPCAUTH_lockd ;
 int S_IFDIR ;
 struct dentry* d_alloc_root (struct inode*) ;
 int d_genocide (struct dentry*) ;
 int dput (struct dentry*) ;
 int files ;
 int iput (struct inode*) ;
 struct inode* rpc_get_inode (struct super_block*,int) ;
 scalar_t__ rpc_populate (struct dentry*,int ,int ,int ,int *) ;
 int s_ops ;

__attribute__((used)) static int
rpc_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode *inode;
 struct dentry *root;

 sb->s_blocksize = PAGE_CACHE_SIZE;
 sb->s_blocksize_bits = PAGE_CACHE_SHIFT;
 sb->s_magic = RPCAUTH_GSSMAGIC;
 sb->s_op = &s_ops;
 sb->s_time_gran = 1;

 inode = rpc_get_inode(sb, S_IFDIR | 0755);
 if (!inode)
  return -ENOMEM;
 root = d_alloc_root(inode);
 if (!root) {
  iput(inode);
  return -ENOMEM;
 }
 if (rpc_populate(root, files, RPCAUTH_lockd, RPCAUTH_RootEOF, ((void*)0)))
  goto out;
 sb->s_root = root;
 return 0;
out:
 d_genocide(root);
 dput(root);
 return -ENOMEM;
}
