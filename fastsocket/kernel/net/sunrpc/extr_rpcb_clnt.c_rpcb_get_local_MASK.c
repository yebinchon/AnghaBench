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
 int /*<<< orphan*/  rpcb_clnt_lock ; 
 int rpcb_users ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(void)
{
	int cnt;

	FUNC0(&rpcb_clnt_lock);
	if (rpcb_users)
		rpcb_users++;
	cnt = rpcb_users;
	FUNC1(&rpcb_clnt_lock);

	return cnt;
}