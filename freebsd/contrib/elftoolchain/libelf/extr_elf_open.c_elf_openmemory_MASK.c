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
typedef  int /*<<< orphan*/  Elf ;

/* Variables and functions */
 int /*<<< orphan*/  ARGUMENT ; 
 scalar_t__ EV_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEQUENCE ; 
 int /*<<< orphan*/ * FUNC2 (unsigned char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  version ; 

Elf *
FUNC3(char *image, size_t sz)
{
	if (FUNC0(version) == EV_NONE) {
		FUNC1(SEQUENCE, 0);
		return (NULL);
	}

	if (image == NULL || sz == 0) {
		FUNC1(ARGUMENT, 0);
		return (NULL);
	}

	return (FUNC2((unsigned char *) image, sz, 0));
}