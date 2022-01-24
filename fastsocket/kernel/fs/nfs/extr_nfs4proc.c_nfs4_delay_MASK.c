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
struct rpc_clnt {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 long NFS4_POLL_RETRY_MAX ; 
 long NFS4_POLL_RETRY_MIN ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct rpc_clnt *clnt, long *timeout)
{
	int res = 0;

	FUNC2();

	if (*timeout <= 0)
		*timeout = NFS4_POLL_RETRY_MIN;
	if (*timeout > NFS4_POLL_RETRY_MAX)
		*timeout = NFS4_POLL_RETRY_MAX;
	FUNC1(*timeout);
	if (FUNC0(current))
		res = -ERESTARTSYS;
	*timeout <<= 1;
	return res;
}