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
struct fdesc {scalar_t__ id; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  RPOLL_IN ; 
 int errno ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fdesc*,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  evctx ; 
 int /*<<< orphan*/  input ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fdesc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(void *p)
{
	struct fdesc *f = p;
	int err;

#ifdef USE_LIBBEGEMOT
	if (f->id >= 0)
		return (0);
	if ((f->id = poll_register(f->fd, input, f, RPOLL_IN)) < 0) {
		err = errno;
		syslog(LOG_ERR, "select fd %d: %m", f->fd);
		errno = err;
		return (-1);
	}
#else
	if (FUNC1(f->id))
		return (0);
	if (FUNC0(evctx, f->fd, EV_READ, input, f, &f->id)) {
		err = errno;
		FUNC3(LOG_ERR, "select fd %d: %m", f->fd);
		errno = err;
		return (-1);
	}
#endif
	return (0);
}