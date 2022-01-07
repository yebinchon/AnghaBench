
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kiocb {TYPE_3__* ki_filp; } ;
struct inode {int i_alloc_sem; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct TYPE_6__ {TYPE_2__ f_path; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int BUG_ON (int) ;
 int aio_complete (struct kiocb*,int,int ) ;
 int ocfs2_iocb_clear_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_is_rw_locked (struct kiocb*) ;
 int ocfs2_iocb_rw_locked_level (struct kiocb*) ;
 int ocfs2_rw_unlock (struct inode*,int) ;
 int up_read (int *) ;

__attribute__((used)) static void ocfs2_dio_end_io(struct kiocb *iocb,
        loff_t offset,
        ssize_t bytes,
        void *private,
        int ret,
        bool is_async)
{
 struct inode *inode = iocb->ki_filp->f_path.dentry->d_inode;
 int level;


 BUG_ON(!ocfs2_iocb_is_rw_locked(iocb));

 ocfs2_iocb_clear_rw_locked(iocb);

 level = ocfs2_iocb_rw_locked_level(iocb);
 if (!level)
  up_read(&inode->i_alloc_sem);
 ocfs2_rw_unlock(inode, level);

 if (is_async)
  aio_complete(iocb, ret, 0);
}
