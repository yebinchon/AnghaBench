#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* jobPipe; } ;
typedef  TYPE_1__ Job ;

/* Variables and functions */
 int FD_CLOEXEC ; 
 int /*<<< orphan*/  F_DUPFD ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(Job *job, int minfd)
{
    int i, fd, flags;

    if (FUNC3(job->jobPipe) == -1)
	FUNC0("Cannot create pipe: %s", FUNC4(errno));

    for (i = 0; i < 2; i++) {
       /* Avoid using low numbered fds */
       fd = FUNC2(job->jobPipe[i], F_DUPFD, minfd);
       if (fd != -1) {
	   FUNC1(job->jobPipe[i]);
	   job->jobPipe[i] = fd;
       }
    }
    
    /* Set close-on-exec flag for both */
    if (FUNC2(job->jobPipe[0], F_SETFD, FD_CLOEXEC) == -1)
	FUNC0("Cannot set close-on-exec: %s", FUNC4(errno));
    if (FUNC2(job->jobPipe[1], F_SETFD, FD_CLOEXEC) == -1)
	FUNC0("Cannot set close-on-exec: %s", FUNC4(errno));

    /*
     * We mark the input side of the pipe non-blocking; we poll(2) the
     * pipe when we're waiting for a job token, but we might lose the
     * race for the token when a new one becomes available, so the read 
     * from the pipe should not block.
     */
    flags = FUNC2(job->jobPipe[0], F_GETFL, 0);
    if (flags == -1)
	FUNC0("Cannot get flags: %s", FUNC4(errno));
    flags |= O_NONBLOCK;
    if (FUNC2(job->jobPipe[0], F_SETFL, flags) == -1)
	FUNC0("Cannot set flags: %s", FUNC4(errno));
}