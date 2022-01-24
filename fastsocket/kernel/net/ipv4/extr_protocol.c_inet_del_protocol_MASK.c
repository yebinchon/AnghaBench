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
struct net_protocol {int dummy; } ;

/* Variables and functions */
 int MAX_INET_PROTOS ; 
 int /*<<< orphan*/  inet_proto_lock ; 
 struct net_protocol const** inet_protos ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(const struct net_protocol *prot, unsigned char protocol)
{
	int hash, ret;

	hash = protocol & (MAX_INET_PROTOS - 1);

	FUNC0(&inet_proto_lock);
	if (inet_protos[hash] == prot) {
		inet_protos[hash] = NULL;
		ret = 0;
	} else {
		ret = -1;
	}
	FUNC1(&inet_proto_lock);

	FUNC2();

	return ret;
}