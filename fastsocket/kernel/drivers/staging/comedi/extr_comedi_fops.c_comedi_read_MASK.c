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
struct file {int f_flags; TYPE_1__* f_dentry; } ;
struct comedi_subdevice {struct file* busy; struct comedi_async* async; } ;
struct comedi_device_file_info {struct comedi_device* device; } ;
struct comedi_device {int /*<<< orphan*/  minor; int /*<<< orphan*/  attached; } ;
struct comedi_async {scalar_t__ buf_read_ptr; scalar_t__ prealloc_bufsz; int prealloc_buf; scalar_t__ buf_read_count; scalar_t__ buf_write_count; int /*<<< orphan*/  wait_head; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EAGAIN ; 
 int EFAULT ; 
 int EIO ; 
 int ENODEV ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int O_NONBLOCK ; 
 int SRF_ERROR ; 
 int SRF_RUNNING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_async*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_async*,int) ; 
 int FUNC5 (struct comedi_async*) ; 
 struct comedi_device_file_info* FUNC6 (unsigned int const) ; 
 struct comedi_subdevice* FUNC7 (struct comedi_device_file_info*) ; 
 int FUNC8 (struct comedi_subdevice*) ; 
 int FUNC9 (char*,int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC16(struct file *file, char *buf, size_t nbytes,
			   loff_t * offset)
{
	struct comedi_subdevice *s;
	struct comedi_async *async;
	int n, m, count = 0, retval = 0;
	FUNC0(wait, current);
	const unsigned minor = FUNC11(file->f_dentry->d_inode);
	struct comedi_device_file_info *dev_file_info =
	    FUNC6(minor);
	struct comedi_device *dev = dev_file_info->device;

	if (!dev->attached) {
		FUNC1("no driver configured on comedi%i\n", dev->minor);
		retval = -ENODEV;
		goto done;
	}

	s = FUNC7(dev_file_info);
	if (s == NULL) {
		retval = -EIO;
		goto done;
	}
	async = s->async;
	if (!nbytes) {
		retval = 0;
		goto done;
	}
	if (!s->busy) {
		retval = 0;
		goto done;
	}
	if (s->busy != file) {
		retval = -EACCES;
		goto done;
	}

	FUNC2(&async->wait_head, &wait);
	while (nbytes > 0 && !retval) {
		FUNC14(TASK_INTERRUPTIBLE);

		n = nbytes;

		m = FUNC5(async);
		/* printk("%d available\n",m); */
		if (async->buf_read_ptr + m > async->prealloc_bufsz)
			m = async->prealloc_bufsz - async->buf_read_ptr;
		/* printk("%d contiguous\n",m); */
		if (m < n)
			n = m;

		if (n == 0) {
			if (!(FUNC8(s) & SRF_RUNNING)) {
				FUNC10(dev, s);
				if (FUNC8(s) &
				    SRF_ERROR) {
					retval = -EPIPE;
				} else {
					retval = 0;
				}
				break;
			}
			if (file->f_flags & O_NONBLOCK) {
				retval = -EAGAIN;
				break;
			}
			if (FUNC15(current)) {
				retval = -ERESTARTSYS;
				break;
			}
			FUNC13();
			if (!s->busy) {
				retval = 0;
				break;
			}
			if (s->busy != file) {
				retval = -EACCES;
				break;
			}
			continue;
		}
		m = FUNC9(buf, async->prealloc_buf +
				 async->buf_read_ptr, n);
		if (m) {
			n -= m;
			retval = -EFAULT;
		}

		FUNC3(async, n);
		FUNC4(async, n);

		count += n;
		nbytes -= n;

		buf += n;
		break;		/* makes device work like a pipe */
	}
	if (!(FUNC8(s) & (SRF_ERROR | SRF_RUNNING)) &&
	    async->buf_read_count - async->buf_write_count == 0) {
		FUNC10(dev, s);
	}
	FUNC14(TASK_RUNNING);
	FUNC12(&async->wait_head, &wait);

done:
	return count ? count : retval;
}