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

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pipe_users ; 
 int pipe_version ; 
 int /*<<< orphan*/  pipe_version_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int ret;

	FUNC1(&pipe_version_lock);
	if (pipe_version >= 0) {
		FUNC0(&pipe_users);
		ret = pipe_version;
	} else
		ret = -EAGAIN;
	FUNC2(&pipe_version_lock);
	return ret;
}