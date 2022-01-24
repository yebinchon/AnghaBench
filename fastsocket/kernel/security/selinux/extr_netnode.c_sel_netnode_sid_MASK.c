#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int /*<<< orphan*/  sid; } ;
struct sel_netnode {TYPE_1__ nsec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sel_netnode* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(void *addr, u16 family, u32 *sid)
{
	struct sel_netnode *node;

	FUNC0();
	node = FUNC2(addr, family);
	if (node != NULL) {
		*sid = node->nsec.sid;
		FUNC1();
		return 0;
	}
	FUNC1();

	return FUNC3(addr, family, sid);
}