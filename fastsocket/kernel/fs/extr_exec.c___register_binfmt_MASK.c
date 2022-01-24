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
struct linux_binfmt {int /*<<< orphan*/  lh; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  binfmt_lock ; 
 int /*<<< orphan*/  formats ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct linux_binfmt * fmt, int insert)
{
	if (!fmt)
		return -EINVAL;
	FUNC2(&binfmt_lock);
	insert ? FUNC0(&fmt->lh, &formats) :
		 FUNC1(&fmt->lh, &formats);
	FUNC3(&binfmt_lock);
	return 0;	
}