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
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACC_MKNOD ; 
 short DEV_BLOCK ; 
 short DEV_CHAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (short,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(int mode, dev_t dev)
{
	short type;

	if (!FUNC2(mode) && !FUNC3(mode))
		return 0;

	if (FUNC2(mode))
		type = DEV_BLOCK;
	else
		type = DEV_CHAR;

	return FUNC4(type, FUNC0(dev), FUNC1(dev),
			ACC_MKNOD);

}