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
struct carlu {int dummy; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (struct carlu*) ; 
 int FUNC1 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct carlu*) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct carlu*) ; 
 struct carlu* FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
	struct carlu *carl = NULL;
	int err;

	err = FUNC4();
	if (err)
		goto out;

	carl = FUNC6();
	if (FUNC0(carl)) {
		err = FUNC1(carl);
		goto out;
	}

	err = FUNC3(carl);
	if (err)
		goto out_close;

out_close:
	FUNC5(carl);

out:
	FUNC2();
	return err ? EXIT_FAILURE : EXIT_SUCCESS;
}