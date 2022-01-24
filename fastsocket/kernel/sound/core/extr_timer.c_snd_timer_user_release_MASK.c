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
struct snd_timer_user {struct snd_timer_user* tqueue; struct snd_timer_user* queue; scalar_t__ timeri; } ;
struct inode {int dummy; } ;
struct file {struct snd_timer_user* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_timer_user*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct snd_timer_user *tu;

	if (file->private_data) {
		tu = file->private_data;
		file->private_data = NULL;
		if (tu->timeri)
			FUNC1(tu->timeri);
		FUNC0(tu->queue);
		FUNC0(tu->tqueue);
		FUNC0(tu);
	}
	return 0;
}