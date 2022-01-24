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
struct net_offload {int dummy; } ;

/* Variables and functions */
 int MAX_INET_PROTOS ; 
 int /*<<< orphan*/  inet6_offload_lock ; 
 struct net_offload const** inet6_offloads ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(const struct net_offload *prot, unsigned char protocol)
{
	int ret, hash = protocol & (MAX_INET_PROTOS - 1);

	FUNC0(&inet6_offload_lock);

	if (inet6_offloads[hash] != prot) {
		ret = -1;
	} else {
		inet6_offloads[hash] = NULL;
		ret = 0;
	}

	FUNC1(&inet6_offload_lock);

	FUNC2();

	return ret;
}