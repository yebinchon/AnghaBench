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
struct carlu {int /*<<< orphan*/  fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170_FIRMWARE_FILE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct carlu*) ; 
 int FUNC4 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct carlu *ar)
{
	int ret = 0;

	FUNC5("loading firmware...\n");

	ar->fw = FUNC2(CARL9170_FIRMWARE_FILE);
	if (FUNC0(ar->fw))
		return FUNC1(ar->fw);

	ret = FUNC3(ar);
	if (ret)
		return ret;

	ret = FUNC4(ar);
	if (ret)
		return ret;

	return 0;
}