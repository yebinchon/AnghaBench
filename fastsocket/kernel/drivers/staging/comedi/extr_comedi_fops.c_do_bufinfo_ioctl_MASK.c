#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int subdev_flags; struct comedi_async* async; } ;
struct comedi_device {scalar_t__ n_subdevices; struct comedi_subdevice* subdevices; } ;
struct comedi_bufinfo {scalar_t__ subdevice; scalar_t__ buf_write_count; scalar_t__ buf_read_count; scalar_t__ buf_read_ptr; scalar_t__ buf_write_ptr; scalar_t__ bytes_written; scalar_t__ bytes_read; } ;
struct comedi_async {scalar_t__ buf_write_count; scalar_t__ buf_read_count; scalar_t__ buf_read_ptr; scalar_t__ buf_write_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int SDF_CMD_READ ; 
 int SDF_CMD_WRITE ; 
 int SRF_ERROR ; 
 int SRF_RUNNING ; 
 scalar_t__ FUNC1 (struct comedi_async*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_async*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct comedi_async*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_async*,scalar_t__) ; 
 int FUNC5 (struct comedi_subdevice*) ; 
 scalar_t__ FUNC6 (struct comedi_bufinfo*,void*,int) ; 
 scalar_t__ FUNC7 (void*,struct comedi_bufinfo*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*,struct comedi_subdevice*) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev, void *arg)
{
	struct comedi_bufinfo bi;
	struct comedi_subdevice *s;
	struct comedi_async *async;

	if (FUNC6(&bi, arg, sizeof(struct comedi_bufinfo)))
		return -EFAULT;

	if (bi.subdevice >= dev->n_subdevices || bi.subdevice < 0)
		return -EINVAL;

	s = dev->subdevices + bi.subdevice;
	async = s->async;

	if (!async) {
		FUNC0("subdevice does not have async capability\n");
		bi.buf_write_ptr = 0;
		bi.buf_read_ptr = 0;
		bi.buf_write_count = 0;
		bi.buf_read_count = 0;
		goto copyback;
	}

	if (bi.bytes_read && (s->subdev_flags & SDF_CMD_READ)) {
		bi.bytes_read = FUNC1(async, bi.bytes_read);
		FUNC2(async, bi.bytes_read);

		if (!(FUNC5(s) & (SRF_ERROR |
							  SRF_RUNNING))
		    && async->buf_write_count == async->buf_read_count) {
			FUNC8(dev, s);
		}
	}

	if (bi.bytes_written && (s->subdev_flags & SDF_CMD_WRITE)) {
		bi.bytes_written =
		    FUNC3(async, bi.bytes_written);
		FUNC4(async, bi.bytes_written);
	}

	bi.buf_write_count = async->buf_write_count;
	bi.buf_write_ptr = async->buf_write_ptr;
	bi.buf_read_count = async->buf_read_count;
	bi.buf_read_ptr = async->buf_read_ptr;

copyback:
	if (FUNC7(arg, &bi, sizeof(struct comedi_bufinfo)))
		return -EFAULT;

	return 0;
}