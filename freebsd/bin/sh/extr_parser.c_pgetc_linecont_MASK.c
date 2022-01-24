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
 scalar_t__ doprompt ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  plinno ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(void)
{
	int c;

	while ((c = FUNC1()) == '\\') {
		c = FUNC0();
		if (c == '\n') {
			plinno++;
			if (doprompt)
				FUNC4(2);
			else
				FUNC4(0);
		} else {
			FUNC2();
			/* Allow the backslash to be pushed back. */
			FUNC3("\\", 1, NULL);
			return (FUNC0());
		}
	}
	return (c);
}