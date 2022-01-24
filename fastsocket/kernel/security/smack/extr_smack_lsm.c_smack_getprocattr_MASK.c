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

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static int FUNC4(struct task_struct *p, char *name, char **value)
{
	char *cp;
	int slen;

	if (FUNC1(name, "current") != 0)
		return -EINVAL;

	cp = FUNC0(FUNC3(p), GFP_KERNEL);
	if (cp == NULL)
		return -ENOMEM;

	slen = FUNC2(cp);
	*value = cp;
	return slen;
}