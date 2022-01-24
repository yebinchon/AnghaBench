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
 int /*<<< orphan*/  AR9170_MAC_REG_BCN_PERIOD ; 
 int /*<<< orphan*/  AR9170_MAC_REG_PRETBTT ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC0 (struct carlu*) ; 
 int FUNC1 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC2 (struct carlu*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct carlu*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct carlu*) ; 
 struct carlu* FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
	struct carlu *carl;
	int err;

	err = FUNC3();
	if (err)
		return EXIT_FAILURE;

	carl = FUNC6();
	if (FUNC0(carl)) {
		err = FUNC1(carl);
		goto out;
	}

	FUNC2(carl, AR9170_MAC_REG_BCN_PERIOD, 0xFFFFFFFF);
	FUNC2(carl, AR9170_MAC_REG_PRETBTT, 0xFFFFFFFF);

	/* different payload test */
	FUNC4(carl, 9000, 1000, 1566, 1566);
	FUNC5(carl);

out:
	return err ? EXIT_FAILURE : EXIT_SUCCESS;
}