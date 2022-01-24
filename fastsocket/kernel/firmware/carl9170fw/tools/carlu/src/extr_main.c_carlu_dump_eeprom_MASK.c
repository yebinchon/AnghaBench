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
typedef  int /*<<< orphan*/  uint8_t ;
struct carlu {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ FUNC0 (struct carlu*) ; 
 int FUNC1 (struct carlu*) ; 
 int FUNC2 (struct carlu*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct carlu*) ; 
 struct carlu* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(void)
{
	struct carlu *carl = NULL;
	uint8_t data[8192] = { 0 };
	int err;

	err = FUNC4();
	if (err)
		goto out;

	carl = FUNC6();
	if (FUNC0(carl)) {
		err = FUNC1(carl);
		goto out;
	}

	err = FUNC2(carl, 0, sizeof(data), &data);
	if (err)
		goto out_close;

	FUNC7(INFO, "EEPROM:", data, sizeof(data));

out_close:
	FUNC5(carl);

out:
	FUNC3();
	return err ? EXIT_FAILURE : EXIT_SUCCESS;
}