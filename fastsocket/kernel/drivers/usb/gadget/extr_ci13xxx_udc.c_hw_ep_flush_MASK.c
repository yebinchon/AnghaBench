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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_ENDPTFLUSH ; 
 int /*<<< orphan*/  CAP_ENDPTSTAT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(int num, int dir)
{
	int n = FUNC4(num, dir);

	do {
		/* flush any pending transfer */
		FUNC3(CAP_ENDPTFLUSH, FUNC0(n), FUNC0(n));
		while (FUNC2(CAP_ENDPTFLUSH, FUNC0(n)))
			FUNC1();
	} while (FUNC2(CAP_ENDPTSTAT, FUNC0(n)));

	return 0;
}