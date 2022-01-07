
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_lock_context {int io_count; } ;
struct inode {int dummy; } ;
struct file_lock {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_4__ {int (* lock ) (struct file*,int,struct file_lock*) ;} ;
struct TYPE_3__ {struct inode* host; } ;


 int IS_ERR (struct nfs_lock_context*) ;
 TYPE_2__* NFS_PROTO (struct inode*) ;
 int do_vfs_lock (struct file*,struct file_lock*) ;
 int nfs_file_open_context (struct file*) ;
 struct nfs_lock_context* nfs_get_lock_context (int ) ;
 int nfs_iocounter_wait (int *) ;
 int nfs_put_lock_context (struct nfs_lock_context*) ;
 int nfs_sync_mapping (TYPE_1__*) ;
 int stub1 (struct file*,int,struct file_lock*) ;

__attribute__((used)) static int
do_unlk(struct file *filp, int cmd, struct file_lock *fl, int is_local)
{
 struct inode *inode = filp->f_mapping->host;
 struct nfs_lock_context *l_ctx;
 int status;





 nfs_sync_mapping(filp->f_mapping);

 l_ctx = nfs_get_lock_context(nfs_file_open_context(filp));
 if (!IS_ERR(l_ctx)) {
  status = nfs_iocounter_wait(&l_ctx->io_count);
  nfs_put_lock_context(l_ctx);
  if (status < 0)
   return status;
 }
 if (!is_local)
  status = NFS_PROTO(inode)->lock(filp, cmd, fl);
 else
  status = do_vfs_lock(filp, fl);
 return status;
}
