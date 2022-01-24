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
struct posix_clock {int /*<<< orphan*/  rwsem; int /*<<< orphan*/  zombie; } ;
struct file {struct posix_clock* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct posix_clock *FUNC2(struct file *fp)
{
	struct posix_clock *clk = fp->private_data;

	FUNC0(&clk->rwsem);

	if (!clk->zombie)
		return clk;

	FUNC1(&clk->rwsem);

	return NULL;
}