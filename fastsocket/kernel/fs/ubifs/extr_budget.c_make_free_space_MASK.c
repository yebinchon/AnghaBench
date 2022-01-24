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
struct ubifs_info {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOSPC ; 
 int /*<<< orphan*/  MAX_MKSPC_RETRIES ; 
 int /*<<< orphan*/  NR_TO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 long long FUNC1 (struct ubifs_info*) ; 
 int FUNC2 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubifs_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c)
{
	int err, retries = 0;
	long long liab1, liab2;

	do {
		liab1 = FUNC1(c);
		/*
		 * We probably have some dirty pages or inodes (liability), try
		 * to write them back.
		 */
		FUNC0("liability %lld, run write-back", liab1);
		FUNC3(c, NR_TO_WRITE);

		liab2 = FUNC1(c);
		if (liab2 < liab1)
			return -EAGAIN;

		FUNC0("new liability %lld (not shrinked)", liab2);

		/* Liability did not shrink again, try GC */
		FUNC0("Run GC");
		err = FUNC2(c);
		if (!err)
			return -EAGAIN;

		if (err != -EAGAIN && err != -ENOSPC)
			/* Some real error happened */
			return err;

		FUNC0("Run commit (retries %d)", retries);
		err = FUNC4(c);
		if (err)
			return err;
	} while (retries++ < MAX_MKSPC_RETRIES);

	return -ENOSPC;
}