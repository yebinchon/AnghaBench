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
typedef  int /*<<< orphan*/  uint32_t ;
struct rr_remote_endpoint {int /*<<< orphan*/  list; int /*<<< orphan*/  quota_lock; int /*<<< orphan*/  quota_wait; int /*<<< orphan*/  pid; int /*<<< orphan*/  cid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RPCROUTER_PID_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct rr_remote_endpoint* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rr_remote_endpoint*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  remote_endpoints ; 
 int /*<<< orphan*/  remote_endpoints_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(uint32_t cid)
{
	struct rr_remote_endpoint *new_c;
	unsigned long flags;

	new_c = FUNC1(sizeof(struct rr_remote_endpoint), GFP_KERNEL);
	if (!new_c)
		return -ENOMEM;
	FUNC3(new_c, 0, sizeof(struct rr_remote_endpoint));

	new_c->cid = cid;
	new_c->pid = RPCROUTER_PID_REMOTE;
	FUNC0(&new_c->quota_wait);
	FUNC4(&new_c->quota_lock);

	FUNC5(&remote_endpoints_lock, flags);
	FUNC2(&new_c->list, &remote_endpoints);
	FUNC6(&remote_endpoints_lock, flags);
	return 0;
}