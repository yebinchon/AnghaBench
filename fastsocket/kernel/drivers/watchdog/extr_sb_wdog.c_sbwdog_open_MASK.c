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
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  sbwdog_gate ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timeout ; 
 int /*<<< orphan*/  user_dog ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	FUNC2(inode, file);
	if (FUNC4(0, &sbwdog_gate))
		return -EBUSY;
	FUNC0(THIS_MODULE);

	/*
	 * Activate the timer
	 */
	FUNC3(user_dog, timeout);
	FUNC1(1, user_dog);

	return 0;
}