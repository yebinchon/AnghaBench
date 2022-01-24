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
struct file {int dummy; } ;
struct audio_operations {int /*<<< orphan*/  poll_sleeper; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 struct audio_operations** audio_devs ; 
 unsigned int FUNC0 (struct file*,int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC1 (struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

unsigned int FUNC3(struct file * file, int dev, poll_table *wait)
{
	struct audio_operations *adev = audio_devs[dev];
	FUNC2(file, &adev->poll_sleeper, wait);
	return FUNC0(file, dev, wait) | FUNC1(file, dev, wait);
}