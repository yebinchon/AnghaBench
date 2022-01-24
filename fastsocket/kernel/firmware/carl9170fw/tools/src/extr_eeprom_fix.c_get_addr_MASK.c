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
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int FUNC1 (char*,unsigned int*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC2(char *str, unsigned int *val)
{
	int err;

	err = FUNC1(str, val);
	if (*val & 3) {
		FUNC0(stderr, "Address 0x%.8x is not a multiple of 4.\n",
			*val);

		return -EINVAL;
	}

	return err;
}