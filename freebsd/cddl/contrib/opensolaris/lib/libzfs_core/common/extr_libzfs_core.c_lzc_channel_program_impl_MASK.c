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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZCP_ARG_ARGLIST ; 
 int /*<<< orphan*/  ZCP_ARG_INSTRLIMIT ; 
 int /*<<< orphan*/  ZCP_ARG_MEMLIMIT ; 
 int /*<<< orphan*/  ZCP_ARG_PROGRAM ; 
 int /*<<< orphan*/  ZCP_ARG_SYNC ; 
 int /*<<< orphan*/  ZFS_IOC_CHANNEL_PROGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC7(const char *pool, const char *program, boolean_t sync,
    uint64_t instrlimit, uint64_t memlimit, nvlist_t *argnvl, nvlist_t **outnvl)
{
	int error;
	nvlist_t *args;

	args = FUNC4();
	FUNC2(args, ZCP_ARG_PROGRAM, program);
	FUNC1(args, ZCP_ARG_ARGLIST, argnvl);
	FUNC0(args, ZCP_ARG_SYNC, sync);
	FUNC3(args, ZCP_ARG_INSTRLIMIT, instrlimit);
	FUNC3(args, ZCP_ARG_MEMLIMIT, memlimit);
	error = FUNC6(ZFS_IOC_CHANNEL_PROGRAM, pool, args, outnvl);
	FUNC5(args);

	return (error);
}