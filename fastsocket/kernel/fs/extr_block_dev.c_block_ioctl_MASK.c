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
struct file {int f_flags; int /*<<< orphan*/  f_mode; TYPE_1__* f_mapping; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_NDELAY ; 
 struct block_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int O_NDELAY ; 
 long FUNC1 (struct block_device*,int /*<<< orphan*/ ,unsigned int,unsigned long) ; 

__attribute__((used)) static long FUNC2(struct file *file, unsigned cmd, unsigned long arg)
{
	struct block_device *bdev = FUNC0(file->f_mapping->host);
	fmode_t mode = file->f_mode;

	/*
	 * O_NDELAY can be altered using fcntl(.., F_SETFL, ..), so we have
	 * to updated it before every ioctl.
	 */
	if (file->f_flags & O_NDELAY)
		mode |= FMODE_NDELAY;
	else
		mode &= ~FMODE_NDELAY;

	return FUNC1(bdev, mode, cmd, arg);
}