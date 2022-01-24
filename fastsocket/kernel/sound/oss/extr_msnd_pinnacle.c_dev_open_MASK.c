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
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;
struct TYPE_2__ {int dsp_minor; int play_ndelay; int rec_ndelay; int mixer_minor; int /*<<< orphan*/  flags; scalar_t__ nresets; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  F_AUDIO_READ_INUSE ; 
 int /*<<< orphan*/  F_AUDIO_WRITE_INUSE ; 
 int /*<<< orphan*/  F_DISABLE_WRITE_NDELAY ; 
 int O_NDELAY ; 
 TYPE_1__ dev ; 
 int FUNC0 (struct file*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	int minor = FUNC1(inode);
	int err = 0;

	if (minor == dev.dsp_minor) {
		if ((file->f_mode & FMODE_WRITE &&
		     FUNC4(F_AUDIO_WRITE_INUSE, &dev.flags)) ||
		    (file->f_mode & FMODE_READ &&
		     FUNC4(F_AUDIO_READ_INUSE, &dev.flags)))
			return -EBUSY;

		if ((err = FUNC0(file)) >= 0) {
			dev.nresets = 0;
			if (file->f_mode & FMODE_WRITE) {
				FUNC2();
				if (!FUNC4(F_DISABLE_WRITE_NDELAY, &dev.flags))
					dev.play_ndelay = (file->f_flags & O_NDELAY) ? 1 : 0;
				else
					dev.play_ndelay = 0;
			}
			if (file->f_mode & FMODE_READ) {
				FUNC3();
				dev.rec_ndelay = (file->f_flags & O_NDELAY) ? 1 : 0;
			}
		}
	}
	else if (minor == dev.mixer_minor) {
		/* nothing */
	} else
		err = -EINVAL;

	return err;
}