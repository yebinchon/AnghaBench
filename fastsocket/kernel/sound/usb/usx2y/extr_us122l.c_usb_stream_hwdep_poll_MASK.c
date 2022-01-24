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
struct usb_stream {scalar_t__ state; unsigned int periods_polled; unsigned int periods_done; } ;
struct TYPE_2__ {struct usb_stream* s; int /*<<< orphan*/  sleep; } ;
struct us122l {unsigned int second_periods_polled; int /*<<< orphan*/  mutex; struct file* first; TYPE_1__ sk; } ;
struct snd_hwdep {struct us122l* private_data; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLWRNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ usb_stream_ready ; 

__attribute__((used)) static unsigned int FUNC3(struct snd_hwdep *hw,
					  struct file *file, poll_table *wait)
{
	struct us122l	*us122l = hw->private_data;
	unsigned	*polled;
	unsigned int	mask;

	FUNC2(file, &us122l->sk.sleep, wait);

	mask = POLLIN | POLLOUT | POLLWRNORM | POLLERR;
	if (FUNC0(&us122l->mutex)) {
		struct usb_stream *s = us122l->sk.s;
		if (s && s->state == usb_stream_ready) {
			if (us122l->first == file)
				polled = &s->periods_polled;
			else
				polled = &us122l->second_periods_polled;
			if (*polled != s->periods_done) {
				*polled = s->periods_done;
				mask = POLLIN | POLLOUT | POLLWRNORM;
			} else
				mask = 0;
		}
		FUNC1(&us122l->mutex);
	}
	return mask;
}