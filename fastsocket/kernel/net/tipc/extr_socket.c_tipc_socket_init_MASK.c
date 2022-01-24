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
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int sockets_enabled ; 
 int /*<<< orphan*/  tipc_family_ops ; 
 int /*<<< orphan*/  tipc_proto ; 

int FUNC4(void)
{
	int res;

	res = FUNC1(&tipc_proto, 1);
	if (res) {
		FUNC0("Failed to register TIPC protocol type\n");
		goto out;
	}

	res = FUNC3(&tipc_family_ops);
	if (res) {
		FUNC0("Failed to register TIPC socket type\n");
		FUNC2(&tipc_proto);
		goto out;
	}

	sockets_enabled = 1;
 out:
	return res;
}