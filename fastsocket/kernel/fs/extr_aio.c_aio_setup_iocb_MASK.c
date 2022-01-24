#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kiocb {int ki_opcode; void* ki_retry; int /*<<< orphan*/  ki_left; int /*<<< orphan*/  ki_buf; struct file* ki_filp; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  aio_fsync; int /*<<< orphan*/  aio_write; int /*<<< orphan*/  aio_read; } ;

/* Variables and functions */
 int EBADF ; 
 int EFAULT ; 
 int EINVAL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
#define  IOCB_CMD_FDSYNC 133 
#define  IOCB_CMD_FSYNC 132 
#define  IOCB_CMD_PREAD 131 
#define  IOCB_CMD_PREADV 130 
#define  IOCB_CMD_PWRITE 129 
#define  IOCB_CMD_PWRITEV 128 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  READ ; 
 int /*<<< orphan*/  VERIFY_READ ; 
 int /*<<< orphan*/  VERIFY_WRITE ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* aio_fdsync ; 
 void* aio_fsync ; 
 void* aio_rw_vect_retry ; 
 int FUNC1 (struct kiocb*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kiocb*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static ssize_t FUNC6(struct kiocb *kiocb, bool compat)
{
	struct file *file = kiocb->ki_filp;
	ssize_t ret = 0;

	switch (kiocb->ki_opcode) {
	case IOCB_CMD_PREAD:
		ret = -EBADF;
		if (FUNC5(!(file->f_mode & FMODE_READ)))
			break;
		ret = -EFAULT;
		if (FUNC5(!FUNC0(VERIFY_WRITE, kiocb->ki_buf,
			kiocb->ki_left)))
			break;
		ret = FUNC4(file, MAY_READ);
		if (FUNC5(ret))
			break;
		ret = FUNC1(kiocb);
		if (ret)
			break;
		ret = -EINVAL;
		if (file->f_op->aio_read)
			kiocb->ki_retry = aio_rw_vect_retry;
		break;
	case IOCB_CMD_PWRITE:
		ret = -EBADF;
		if (FUNC5(!(file->f_mode & FMODE_WRITE)))
			break;
		ret = -EFAULT;
		if (FUNC5(!FUNC0(VERIFY_READ, kiocb->ki_buf,
			kiocb->ki_left)))
			break;
		ret = FUNC4(file, MAY_WRITE);
		if (FUNC5(ret))
			break;
		ret = FUNC1(kiocb);
		if (ret)
			break;
		ret = -EINVAL;
		if (file->f_op->aio_write)
			kiocb->ki_retry = aio_rw_vect_retry;
		break;
	case IOCB_CMD_PREADV:
		ret = -EBADF;
		if (FUNC5(!(file->f_mode & FMODE_READ)))
			break;
		ret = FUNC4(file, MAY_READ);
		if (FUNC5(ret))
			break;
		ret = FUNC2(READ, kiocb, compat);
		if (ret)
			break;
		ret = -EINVAL;
		if (file->f_op->aio_read)
			kiocb->ki_retry = aio_rw_vect_retry;
		break;
	case IOCB_CMD_PWRITEV:
		ret = -EBADF;
		if (FUNC5(!(file->f_mode & FMODE_WRITE)))
			break;
		ret = FUNC4(file, MAY_WRITE);
		if (FUNC5(ret))
			break;
		ret = FUNC2(WRITE, kiocb, compat);
		if (ret)
			break;
		ret = -EINVAL;
		if (file->f_op->aio_write)
			kiocb->ki_retry = aio_rw_vect_retry;
		break;
	case IOCB_CMD_FDSYNC:
		ret = -EINVAL;
		if (file->f_op->aio_fsync)
			kiocb->ki_retry = aio_fdsync;
		break;
	case IOCB_CMD_FSYNC:
		ret = -EINVAL;
		if (file->f_op->aio_fsync)
			kiocb->ki_retry = aio_fsync;
		break;
	default:
		FUNC3("EINVAL: io_submit: no operation provided\n");
		ret = -EINVAL;
	}

	if (!kiocb->ki_retry)
		return ret;

	return 0;
}