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
struct tty_struct {int index; struct smd_tty_info* driver_data; } ;
struct smd_tty_info {scalar_t__ ch; struct tty_struct* tty; int /*<<< orphan*/  open_count; int /*<<< orphan*/  wake_lock; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  WAKE_LOCK_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (char const*,scalar_t__*,struct smd_tty_info*,int /*<<< orphan*/ ) ; 
 struct smd_tty_info* smd_tty ; 
 int /*<<< orphan*/  smd_tty_lock ; 
 int /*<<< orphan*/  smd_tty_notify ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC5(struct tty_struct *tty, struct file *f)
{
	int res = 0;
	int n = tty->index;
	struct smd_tty_info *info;
	const char *name;

	if (n == 0) {
		name = "SMD_DS";
	} else if (n == 27) {
		name = "SMD_GPSNMEA";
	} else {
		return -ENODEV;
	}

	info = smd_tty + n;

	FUNC0(&smd_tty_lock);
	FUNC4(&info->wake_lock, WAKE_LOCK_SUSPEND, name);
	tty->driver_data = info;

	if (info->open_count++ == 0) {
		info->tty = tty;
		if (info->ch) {
			FUNC2(info->ch);
		} else {
			res = FUNC3(name, &info->ch, info, smd_tty_notify);
		}
	}
	FUNC1(&smd_tty_lock);

	return res;
}