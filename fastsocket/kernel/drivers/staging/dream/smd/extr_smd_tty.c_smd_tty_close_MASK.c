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
struct tty_struct {struct smd_tty_info* driver_data; } ;
struct smd_tty_info {scalar_t__ open_count; scalar_t__ ch; int /*<<< orphan*/  wake_lock; scalar_t__ tty; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  smd_tty_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct tty_struct *tty, struct file *f)
{
	struct smd_tty_info *info = tty->driver_data;

	if (info == 0)
		return;

	FUNC0(&smd_tty_lock);
	if (--info->open_count == 0) {
		info->tty = 0;
		tty->driver_data = 0;
		FUNC3(&info->wake_lock);
		if (info->ch) {
			FUNC2(info->ch);
			info->ch = 0;
		}
	}
	FUNC1(&smd_tty_lock);
}