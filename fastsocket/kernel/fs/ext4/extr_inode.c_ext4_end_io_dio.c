
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct kiocb {TYPE_1__* private; } ;
struct ext4_inode_info {int i_completed_io_lock; int i_aio_dio_complete_list; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_6__ {scalar_t__ flag; int result; int work; TYPE_5__* inode; int list; struct kiocb* iocb; int size; int offset; } ;
typedef TYPE_1__ ext4_io_end_t ;
struct TYPE_8__ {int i_sb; int i_ino; } ;
struct TYPE_7__ {struct workqueue_struct* dio_unwritten_wq; } ;


 scalar_t__ DIO_AIO_UNWRITTEN ;
 struct ext4_inode_info* EXT4_I (TYPE_5__*) ;
 TYPE_4__* EXT4_SB (int ) ;
 int aio_complete (struct kiocb*,int,int ) ;
 int ext4_free_io_end (TYPE_1__*) ;
 int ext_debug (char*,TYPE_1__*,int ,struct kiocb*,int ,int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work (struct workqueue_struct*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ext4_end_io_dio(struct kiocb *iocb, loff_t offset,
       ssize_t size, void *private, int ret,
       bool is_async)
{
        ext4_io_end_t *io_end = iocb->private;
 struct ext4_inode_info *ei;
 struct workqueue_struct *wq;
 unsigned long flags;


 if (!io_end || !size)
  goto out;

 ei = EXT4_I(io_end->inode);

 ext_debug("ext4_end_io_dio(): io_end 0x%p"
    "for inode %lu, iocb 0x%p, offset %llu, size %llu\n",
     iocb->private, io_end->inode->i_ino, iocb, offset,
    size);

 iocb->private = ((void*)0);


 if (io_end->flag != DIO_AIO_UNWRITTEN){
  ext4_free_io_end(io_end);
out:
  if (is_async)
   aio_complete(iocb, ret, 0);
  return;
 }

 io_end->offset = offset;
 io_end->size = size;
 if (is_async) {
  io_end->iocb = iocb;
  io_end->result = ret;
 }
 wq = EXT4_SB(io_end->inode->i_sb)->dio_unwritten_wq;

 spin_lock_irqsave(&ei->i_completed_io_lock, flags);

 list_add_tail(&io_end->list,
   &EXT4_I(io_end->inode)->i_aio_dio_complete_list);
 spin_unlock_irqrestore(&ei->i_completed_io_lock, flags);


 queue_work(wq, &io_end->work);
}
