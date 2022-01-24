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
struct timeval {long tv_sec; long tv_usec; } ;
struct pollfd {int revents; int events; int fd; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FD_SETSIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int POLLIN ; 
 int POLLOUT ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct timeval*) ; 

int
FUNC5(struct pollfd *fd, int nfd, int timeout)
{
    fd_set rfds, wfds;
    int i, maxfd, nselect, npoll;
    struct timeval tv, *tvp;
    long usecs;

    FUNC2(&rfds);
    FUNC2(&wfds);

    maxfd = -1;
    for (i = 0; i < nfd; i++) {
	fd[i].revents = 0;

	if (fd[i].events & POLLIN)
	    FUNC1(fd[i].fd, &rfds);

	if (fd[i].events & POLLOUT)
	    FUNC1(fd[i].fd, &wfds);

	if (fd[i].fd > maxfd)
	    maxfd = fd[i].fd;
    }
    
    if (maxfd >= FD_SETSIZE) {
	FUNC3("Ran out of fd_set slots; " 
	     "recompile with a larger FD_SETSIZE.");
    }

    if (timeout < 0) {
	tvp = NULL;
    } else {
	usecs = timeout * 1000;
	tv.tv_sec = usecs / 1000000;
	tv.tv_usec = usecs % 1000000;
        tvp = &tv;
    }

    nselect = FUNC4(maxfd + 1, &rfds, &wfds, 0, tvp);

    if (nselect <= 0)
	return nselect;

    npoll = 0;
    for (i = 0; i < nfd; i++) {
	if (FUNC0(fd[i].fd, &rfds))
	    fd[i].revents |= POLLIN;

	if (FUNC0(fd[i].fd, &wfds))
	    fd[i].revents |= POLLOUT;

	if (fd[i].revents)
	    npoll++;
    }

    return npoll;
}