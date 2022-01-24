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
struct comedi_device {int /*<<< orphan*/  async_queue; } ;
struct comedi_async {int events; int cb_mask; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* cb_func ) (int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  wait_head; } ;

/* Variables and functions */
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int COMEDI_CB_OVERFLOW ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  POLL_OUT ; 
 int SDF_CMD_READ ; 
 int SDF_CMD_WRITE ; 
 int /*<<< orphan*/  SIGIO ; 
 unsigned int SRF_ERROR ; 
 unsigned int SRF_RUNNING ; 
 int SRF_USER ; 
 int FUNC0 (struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_subdevice*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct comedi_device *dev, struct comedi_subdevice *s)
{
	struct comedi_async *async = s->async;
	unsigned runflags = 0;
	unsigned runflags_mask = 0;

	/* DPRINTK("comedi_event 0x%x\n",mask); */

	if ((FUNC0(s) & SRF_RUNNING) == 0)
		return;

	if (s->
	    async->events & (COMEDI_CB_EOA | COMEDI_CB_ERROR |
			     COMEDI_CB_OVERFLOW)) {
		runflags_mask |= SRF_RUNNING;
	}
	/* remember if an error event has occured, so an error
	 * can be returned the next time the user does a read() */
	if (s->async->events & (COMEDI_CB_ERROR | COMEDI_CB_OVERFLOW)) {
		runflags_mask |= SRF_ERROR;
		runflags |= SRF_ERROR;
	}
	if (runflags_mask) {
		/*sets SRF_ERROR and SRF_RUNNING together atomically */
		FUNC1(s, runflags_mask, runflags);
	}

	if (async->cb_mask & s->async->events) {
		if (FUNC0(s) & SRF_USER) {
			FUNC4(&async->wait_head);
			if (s->subdev_flags & SDF_CMD_READ) {
				FUNC2(&dev->async_queue, SIGIO, POLL_IN);
			}
			if (s->subdev_flags & SDF_CMD_WRITE) {
				FUNC2(&dev->async_queue, SIGIO, POLL_OUT);
			}
		} else {
			if (async->cb_func)
				async->cb_func(s->async->events, async->cb_arg);
		}
	}
	s->async->events = 0;
}