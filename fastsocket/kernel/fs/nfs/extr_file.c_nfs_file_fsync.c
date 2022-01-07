
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_open_context {int error; int flags; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
struct TYPE_4__ {int name; } ;
struct TYPE_5__ {TYPE_1__ d_name; } ;


 int FLUSH_SYNC ;
 int NFSIOS_VFSFSYNC ;
 int NFS_CONTEXT_ERROR_WRITE ;
 int dprintk (char*,int ,int ,int) ;
 int nfs_commit_inode (struct inode*,int ) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int pnfs_layoutcommit_inode (struct inode*,int) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int xchg (int *,int ) ;

__attribute__((used)) static int
nfs_file_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct nfs_open_context *ctx = nfs_file_open_context(file);
 struct inode *inode = dentry->d_inode;
 int have_error, status;
 int ret = 0;


 dprintk("NFS: fsync file(%s/%s) datasync %d\n",
   dentry->d_parent->d_name.name, dentry->d_name.name,
   datasync);

 nfs_inc_stats(inode, NFSIOS_VFSFSYNC);
 have_error = test_and_clear_bit(NFS_CONTEXT_ERROR_WRITE, &ctx->flags);
 status = nfs_commit_inode(inode, FLUSH_SYNC);
 have_error |= test_bit(NFS_CONTEXT_ERROR_WRITE, &ctx->flags);
 if (have_error)
  ret = xchg(&ctx->error, 0);
 if (!ret && status < 0)
  ret = status;
 if (!ret && !datasync)

  ret = pnfs_layoutcommit_inode(inode, 1);
 return ret;
}
