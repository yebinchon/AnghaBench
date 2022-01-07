
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {TYPE_1__* i_sb; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {TYPE_2__* f_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_4__ {struct inode* host; } ;
struct TYPE_3__ {int s_bdev; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int LM_ST_DEFERRED ;
 int blockdev_direct_IO_no_locking (int,struct kiocb*,struct inode*,int ,struct iovec const*,int ,unsigned long,int ,int *) ;
 int gfs2_get_block_direct ;
 int gfs2_glock_dq (struct gfs2_holder*) ;
 int gfs2_glock_nq (struct gfs2_holder*) ;
 int gfs2_holder_init (int ,int ,int ,struct gfs2_holder*) ;
 int gfs2_holder_uninit (struct gfs2_holder*) ;
 int gfs2_ok_for_dio (struct gfs2_inode*,int,int ) ;

__attribute__((used)) static ssize_t gfs2_direct_IO(int rw, struct kiocb *iocb,
         const struct iovec *iov, loff_t offset,
         unsigned long nr_segs)
{
 struct file *file = iocb->ki_filp;
 struct inode *inode = file->f_mapping->host;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_holder gh;
 int rv;
 gfs2_holder_init(ip->i_gl, LM_ST_DEFERRED, 0, &gh);
 rv = gfs2_glock_nq(&gh);
 if (rv)
  return rv;
 rv = gfs2_ok_for_dio(ip, rw, offset);
 if (rv != 1)
  goto out;

 rv = blockdev_direct_IO_no_locking(rw, iocb, inode, inode->i_sb->s_bdev,
        iov, offset, nr_segs,
        gfs2_get_block_direct, ((void*)0));
out:
 gfs2_glock_dq(&gh);
 gfs2_holder_uninit(&gh);
 return rv;
}
