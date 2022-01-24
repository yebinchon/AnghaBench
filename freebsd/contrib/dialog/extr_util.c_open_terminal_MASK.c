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
 char* TTY_DEVICE ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(char **result, int mode)
{
    const char *device = TTY_DEVICE;
    if (!FUNC2(FUNC1(stderr))
	|| (device = FUNC4(FUNC1(stderr))) == 0) {
	if (!FUNC2(FUNC1(stdout))
	    || (device = FUNC4(FUNC1(stdout))) == 0) {
	    if (!FUNC2(FUNC1(stdin))
		|| (device = FUNC4(FUNC1(stdin))) == 0) {
		device = TTY_DEVICE;
	    }
	}
    }
    *result = FUNC0(device);
    return FUNC3(device, mode);
}