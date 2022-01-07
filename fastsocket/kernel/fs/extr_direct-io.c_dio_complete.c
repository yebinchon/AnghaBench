
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio {scalar_t__ result; scalar_t__ rw; scalar_t__ i_size; scalar_t__ page_errors; scalar_t__ io_error; int flags; TYPE_1__* inode; int iocb; int private; int (* end_io ) (int ,scalar_t__,scalar_t__,int ,scalar_t__,int) ;} ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int i_alloc_sem; } ;


 int DIO_LOCKING ;
 scalar_t__ EIOCBQUEUED ;
 scalar_t__ READ ;
 int aio_complete (int ,scalar_t__,int ) ;
 int stub1 (int ,scalar_t__,scalar_t__,int ,scalar_t__,int) ;
 int up_read_non_owner (int *) ;

__attribute__((used)) static ssize_t dio_complete(struct dio *dio, loff_t offset, ssize_t ret, bool is_async)
{
 ssize_t transferred = 0;







 if (ret == -EIOCBQUEUED)
  ret = 0;

 if (dio->result) {
  transferred = dio->result;


  if ((dio->rw == READ) && ((offset + transferred) > dio->i_size))
   transferred = dio->i_size - offset;
 }

 if (ret == 0)
  ret = dio->page_errors;
 if (ret == 0)
  ret = dio->io_error;
 if (ret == 0)
  ret = transferred;

 if (dio->end_io && dio->result) {
  dio->end_io(dio->iocb, offset, transferred,
       dio->private, ret, is_async);
 } else if (is_async) {
  aio_complete(dio->iocb, ret, 0);
 }

 if (dio->flags & DIO_LOCKING)

  up_read_non_owner(&dio->inode->i_alloc_sem);

 return ret;
}
