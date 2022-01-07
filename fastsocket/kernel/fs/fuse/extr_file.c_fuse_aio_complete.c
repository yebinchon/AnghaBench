
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct path {TYPE_2__* dentry; } ;
struct inode {int dummy; } ;
struct fuse_io_priv {int err; scalar_t__ bytes; int reqs; long size; TYPE_3__* iocb; scalar_t__ write; int lock; } ;
struct fuse_inode {scalar_t__ attr_version; } ;
struct fuse_conn {int lock; scalar_t__ attr_version; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_7__ {TYPE_1__* ki_filp; } ;
struct TYPE_6__ {struct inode* d_inode; } ;
struct TYPE_5__ {struct path f_path; } ;


 long EIO ;
 int aio_complete (TYPE_3__*,long,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int is_sync_kiocb (TYPE_3__*) ;
 int kfree (struct fuse_io_priv*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void fuse_aio_complete(struct fuse_io_priv *io, int err, ssize_t pos)
{
 int left;

 spin_lock(&io->lock);
 if (err)
  io->err = io->err ? : err;
 else if (pos >= 0 && (io->bytes < 0 || pos < io->bytes))
  io->bytes = pos;

 left = --io->reqs;
 spin_unlock(&io->lock);

 if (!left) {
  long res;

  if (io->err)
   res = io->err;
  else if (io->bytes >= 0 && io->write)
   res = -EIO;
  else {
   res = io->bytes < 0 ? io->size : io->bytes;

   if (!is_sync_kiocb(io->iocb)) {
    struct path *path = &io->iocb->ki_filp->f_path;
    struct inode *inode = path->dentry->d_inode;
    struct fuse_conn *fc = get_fuse_conn(inode);
    struct fuse_inode *fi = get_fuse_inode(inode);

    spin_lock(&fc->lock);
    fi->attr_version = ++fc->attr_version;
    spin_unlock(&fc->lock);
   }
  }

  aio_complete(io->iocb, res, 0);
  kfree(io);
 }
}
