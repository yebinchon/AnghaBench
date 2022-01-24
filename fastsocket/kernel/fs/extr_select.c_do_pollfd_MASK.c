#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pollfd {int fd; unsigned int events; unsigned int revents; } ;
struct file {TYPE_1__* f_op; } ;
struct TYPE_6__ {unsigned int key; } ;
typedef  TYPE_2__ poll_table ;
struct TYPE_5__ {unsigned int (* poll ) (struct file*,TYPE_2__*) ;} ;

/* Variables and functions */
 unsigned int DEFAULT_POLLMASK ; 
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLNVAL ; 
 struct file* FUNC0 (int,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int) ; 
 unsigned int FUNC2 (struct file*,TYPE_2__*) ; 

__attribute__((used)) static inline unsigned int FUNC3(struct pollfd *pollfd, poll_table *pwait)
{
	unsigned int mask;
	int fd;

	mask = 0;
	fd = pollfd->fd;
	if (fd >= 0) {
		int fput_needed;
		struct file * file;

		file = FUNC0(fd, &fput_needed);
		mask = POLLNVAL;
		if (file != NULL) {
			mask = DEFAULT_POLLMASK;
			if (file->f_op && file->f_op->poll) {
				if (pwait)
					pwait->key = pollfd->events |
							POLLERR | POLLHUP;
				mask = file->f_op->poll(file, pwait);
			}
			/* Mask out unneeded events. */
			mask &= pollfd->events | POLLERR | POLLHUP;
			FUNC1(file, fput_needed);
		}
	}
	pollfd->revents = mask;

	return mask;
}