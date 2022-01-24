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
struct fsocket_ioctl_arg {int fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMFILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FSOCKET_IOC_CLOSE ; 
 scalar_t__ INIT_FDSET_NUM ; 
 int* FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  fsocket_channel_fd ; 
 int fsocket_fd_num ; 
 int* fsocket_fd_set ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fsocket_ioctl_arg*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

int FUNC5(int fd)
{
	int *old_fd_set = fsocket_fd_set;
	int ret = fd;
	struct fsocket_ioctl_arg arg;

	if (fd >= fsocket_fd_num) {
		fsocket_fd_set = FUNC1(fsocket_fd_num + INIT_FDSET_NUM, sizeof(int));
		if (!fsocket_fd_set) {
			FUNC0("Re allocate memory for listen fd set failed\n");
			arg.fd = fd;
			FUNC3(fsocket_channel_fd, FSOCKET_IOC_CLOSE, &arg);
			//FIXME: Is it a appropriate errno here?
			errno = EMFILE;
			ret = -1;
		} else {
			FUNC4(fsocket_fd_set, old_fd_set, fsocket_fd_num * sizeof(int));
			FUNC2(old_fd_set);
			fsocket_fd_num += INIT_FDSET_NUM;
		}
	}
	return ret;
}