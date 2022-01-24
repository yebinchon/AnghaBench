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
typedef  scalar_t__ uint32_t ;
struct audmgr {int /*<<< orphan*/  ept; } ;

/* Variables and functions */
 scalar_t__ AUDMGR_CB_FUNC_PTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct audmgr*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC6(uint32_t proc, uint32_t xid,
				void *data, int len, void *private)
{
	struct audmgr *am = private;
	uint32_t *x = data;

	if (0) {
		int n = len / 4;
		FUNC2("rpc_call proc %d:", proc);
		while (n--)
			FUNC3(" %08x", FUNC0(*x++));
		FUNC3("\n");
	}

	if (proc == AUDMGR_CB_FUNC_PTR)
		FUNC4(am, data, len);
	else
		FUNC1("audmgr: unknown rpc proc %d\n", proc);
	FUNC5(am->ept, xid);
}