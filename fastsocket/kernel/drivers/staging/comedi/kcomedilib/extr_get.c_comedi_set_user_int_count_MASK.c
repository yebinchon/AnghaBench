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
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct comedi_async {unsigned int buf_read_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comedi_async*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_async*,int) ; 

int FUNC2(void *d, unsigned int subdevice,
			      unsigned int buf_user_count)
{
	struct comedi_device *dev = (struct comedi_device *)d;
	struct comedi_subdevice *s = dev->subdevices + subdevice;
	struct comedi_async *async;
	int num_bytes;

	async = s->async;
	if (async == NULL)
		return -1;

	num_bytes = buf_user_count - async->buf_read_count;
	if (num_bytes < 0)
		return -1;
	FUNC0(async, num_bytes);
	FUNC1(async, num_bytes);

	return 0;
}