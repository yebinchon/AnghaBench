#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct workqueue_struct {int dummy; } ;
struct kiocb {TYPE_1__* private; } ;
struct ext4_inode_info {int /*<<< orphan*/  i_completed_io_lock; int /*<<< orphan*/  i_aio_dio_complete_list; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_6__ {scalar_t__ flag; int result; int /*<<< orphan*/  work; TYPE_5__* inode; int /*<<< orphan*/  list; struct kiocb* iocb; int /*<<< orphan*/  size; int /*<<< orphan*/  offset; } ;
typedef  TYPE_1__ ext4_io_end_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_7__ {struct workqueue_struct* dio_unwritten_wq; } ;

/* Variables and functions */
 scalar_t__ DIO_AIO_UNWRITTEN ; 
 struct ext4_inode_info* FUNC0 (TYPE_5__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,int /*<<< orphan*/ ,struct kiocb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct workqueue_struct*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC9(struct kiocb *iocb, loff_t offset,
			    ssize_t size, void *private, int ret,
			    bool is_async)
{
        ext4_io_end_t *io_end = iocb->private;
	struct ext4_inode_info *ei;
	struct workqueue_struct *wq;
	unsigned long flags;

	/* if not async direct IO or dio with 0 bytes write, just return */
	if (!io_end || !size)
		goto out;

	ei = FUNC0(io_end->inode);

	FUNC4("ext4_end_io_dio(): io_end 0x%p"
		  "for inode %lu, iocb 0x%p, offset %llu, size %llu\n",
 		  iocb->private, io_end->inode->i_ino, iocb, offset,
		  size);

	iocb->private = NULL;

	/* if not aio dio with unwritten extents, just free io and return */
	if (io_end->flag != DIO_AIO_UNWRITTEN){
		FUNC3(io_end);
out:
		if (is_async)
			FUNC2(iocb, ret, 0);
		return;
	}

	io_end->offset = offset;
	io_end->size = size;
	if (is_async) {
		io_end->iocb = iocb;
		io_end->result = ret;
	}
	wq = FUNC1(io_end->inode->i_sb)->dio_unwritten_wq;

	FUNC7(&ei->i_completed_io_lock, flags);
	/* Add the io_end to per-inode completed aio dio list*/
	FUNC5(&io_end->list,
		 &FUNC0(io_end->inode)->i_aio_dio_complete_list);
	FUNC8(&ei->i_completed_io_lock, flags);

	/* queue the work to convert unwritten extents to written */
	FUNC6(wq, &io_end->work);
}