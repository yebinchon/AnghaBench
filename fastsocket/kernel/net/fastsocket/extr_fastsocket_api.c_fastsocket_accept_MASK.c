#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sockaddr_len; int /*<<< orphan*/  sockaddr; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ accept_op; } ;
struct fsocket_ioctl_arg {TYPE_2__ op; int /*<<< orphan*/  fd; } ;
struct file {int f_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR ; 
 int FMODE_FASTSOCKET ; 
 int /*<<< orphan*/  INFO ; 
 struct file* FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct fsocket_ioctl_arg *arg)
{
	int ret;
	struct file *tfile;
	int fput_need;

	tfile =	FUNC2(arg->fd, &fput_need);
	if (tfile == NULL) {
		FUNC1(ERR, "Accept file don't exist!\n");
		return -ENOENT;
	}

	if (tfile->f_mode & FMODE_FASTSOCKET) {
		FUNC0(DEBUG, "Accept fastsocket %d\n", arg->fd);
		ret = FUNC4(tfile, arg->op.accept_op.sockaddr,
				arg->op.accept_op.sockaddr_len, arg->op.accept_op.flags);
	} else {
		FUNC0(INFO, "Accept non-fastsocket %d\n", arg->fd);
		ret = FUNC5(arg->fd, arg->op.accept_op.sockaddr, arg->op.accept_op.sockaddr_len);
	}
	FUNC3(tfile, fput_need);

	return ret;
}