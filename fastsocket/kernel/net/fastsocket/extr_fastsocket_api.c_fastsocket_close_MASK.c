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
struct fsocket_ioctl_arg {int /*<<< orphan*/  fd; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR ; 
 int FMODE_FASTSOCKET ; 
 int /*<<< orphan*/  INFO ; 
 struct file* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fsocket_ioctl_arg * arg)
{
	int error;
	struct file *tfile;
	int fput_need;

	FUNC0(DEBUG,"Close fastsocket %d\n", arg->fd);

	tfile = FUNC2(arg->fd, &fput_need);
	if (tfile == NULL) {
		FUNC1(ERR, "Close file don't exist!\n");
		return -EINVAL;
	}

	if (tfile->f_mode & FMODE_FASTSOCKET) {
		FUNC3(tfile, fput_need);
		error = FUNC4(arg->fd);
	} else {
		FUNC3(tfile, fput_need);
		FUNC0(INFO, "Close non fastsocket %d\n", arg->fd);
		error = FUNC5(arg->fd);
	}

	return error;
}