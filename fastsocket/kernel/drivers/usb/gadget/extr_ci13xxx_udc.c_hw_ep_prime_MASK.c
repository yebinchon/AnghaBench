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
 int /*<<< orphan*/  CAP_ENDPTPRIME ; 
 int /*<<< orphan*/  CAP_ENDPTSETUPSTAT ; 
 int EAGAIN ; 
 int EBUSY ; 
 int RX ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(int num, int dir, int is_ctrl)
{
	int n = FUNC4(num, dir);

	/* the caller should flush first */
	if (FUNC5(num, dir))
		return -EBUSY;

	if (is_ctrl && dir == RX && FUNC2(CAP_ENDPTSETUPSTAT, FUNC0(num)))
		return -EAGAIN;

	FUNC3(CAP_ENDPTPRIME, FUNC0(n), FUNC0(n));

	while (FUNC2(CAP_ENDPTPRIME, FUNC0(n)))
		FUNC1();
	if (is_ctrl && dir == RX  && FUNC2(CAP_ENDPTSETUPSTAT, FUNC0(num)))
		return -EAGAIN;

	/* status shoult be tested according with manual but it doesn't work */
	return 0;
}