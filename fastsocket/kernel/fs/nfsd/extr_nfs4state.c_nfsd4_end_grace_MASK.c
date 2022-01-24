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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfsd4_grace ; 
 int /*<<< orphan*/  nfsd4_lease ; 
 int /*<<< orphan*/  nfsd4_manager ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC0("NFSD: end of grace period\n");
	FUNC2();
	FUNC1(&nfsd4_manager);
	/*
	 * Now that every NFSv4 client has had the chance to recover and
	 * to see the (possibly new, possibly shorter) lease time, we
	 * can safely set the next grace time to the current lease time:
	 */
	nfsd4_grace = nfsd4_lease;
}