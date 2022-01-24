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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ fastsocket_spawn_cpu ; 
 int /*<<< orphan*/  fastsocket_spawn_cpuset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *filp)
{
	if (!FUNC3(THIS_MODULE)) {
		FUNC1(ERR, "Add reference to fastsocket module failed\n");
		return -EINVAL;
	}

	FUNC0(INFO, "Hold module reference\n");

	FUNC2(fastsocket_spawn_cpuset);
	fastsocket_spawn_cpu = 0;

	return 0;
}