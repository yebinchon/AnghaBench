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
struct kthread_create_info {int /*<<< orphan*/  done; int /*<<< orphan*/  result; } ;

/* Variables and functions */
 int CLONE_FILES ; 
 int CLONE_FS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SIGCHLD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct kthread_create_info*,int) ; 
 int /*<<< orphan*/  kthread ; 

__attribute__((used)) static void FUNC3(struct kthread_create_info *create)
{
	int pid;

	/* We want our own signal handler (we take no signals by default). */
	pid = FUNC2(kthread, create, CLONE_FS | CLONE_FILES | SIGCHLD);
	if (pid < 0) {
		create->result = FUNC0(pid);
		FUNC1(&create->done);
	}
}