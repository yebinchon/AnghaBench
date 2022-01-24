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
struct snd_timer_user {int ticks; int queue_size; int /*<<< orphan*/ * queue; int /*<<< orphan*/  tread_sem; int /*<<< orphan*/  qchange_sleep; int /*<<< orphan*/  qlock; } ;
struct snd_timer_read {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct snd_timer_user* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_user*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct snd_timer_user* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct snd_timer_user *tu;
	int err;

	err = FUNC5(inode, file);
	if (err < 0)
		return err;

	tu = FUNC3(sizeof(*tu), GFP_KERNEL);
	if (tu == NULL)
		return -ENOMEM;
	FUNC6(&tu->qlock);
	FUNC0(&tu->qchange_sleep);
	FUNC4(&tu->tread_sem);
	tu->ticks = 1;
	tu->queue_size = 128;
	tu->queue = FUNC2(tu->queue_size * sizeof(struct snd_timer_read),
			    GFP_KERNEL);
	if (tu->queue == NULL) {
		FUNC1(tu);
		return -ENOMEM;
	}
	file->private_data = tu;
	return 0;
}