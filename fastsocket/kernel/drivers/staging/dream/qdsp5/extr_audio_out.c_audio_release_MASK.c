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
struct inode {int dummy; } ;
struct file {struct audio* private_data; } ;
struct audio {int /*<<< orphan*/  lock; scalar_t__ opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_OPEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWRSINK_AUDIO ; 
 int /*<<< orphan*/  FUNC1 (struct audio*) ; 
 int /*<<< orphan*/  FUNC2 (struct audio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct audio *audio = file->private_data;

	FUNC0(EV_OPEN, 0);
	FUNC4(&audio->lock);
	FUNC1(audio);
	FUNC2(audio);
	audio->opened = 0;
	FUNC5(&audio->lock);
	FUNC3(PWRSINK_AUDIO, 0);
	return 0;
}