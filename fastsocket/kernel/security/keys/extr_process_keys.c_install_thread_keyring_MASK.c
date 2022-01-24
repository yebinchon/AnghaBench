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
struct cred {int /*<<< orphan*/  thread_keyring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct cred*) ; 
 int FUNC2 (struct cred*) ; 
 int FUNC3 (struct cred*) ; 
 struct cred* FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	struct cred *new;
	int ret;

	new = FUNC4();
	if (!new)
		return -ENOMEM;

	FUNC0(new->thread_keyring);

	ret = FUNC3(new);
	if (ret < 0) {
		FUNC1(new);
		return ret;
	}

	return FUNC2(new);
}