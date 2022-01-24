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
struct task_struct {int dummy; } ;
struct cred {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct cred* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

const struct cred *FUNC5(struct task_struct *task)
{
	const struct cred *cred;

	FUNC3();

	do {
		cred = FUNC1((task));
		FUNC0(!cred);
	} while (!FUNC2(&((struct cred *)cred)->usage));

	FUNC4();
	return cred;
}