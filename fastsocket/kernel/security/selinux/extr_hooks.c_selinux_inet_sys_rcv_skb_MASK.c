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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct common_audit_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETIF__INGRESS ; 
 int /*<<< orphan*/  NODE__RECVFROM ; 
 int /*<<< orphan*/  SECCLASS_NETIF ; 
 int /*<<< orphan*/  SECCLASS_NODE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(int ifindex, char *addrp, u16 family,
				    u32 peer_sid,
				    struct common_audit_data *ad)
{
	int err;
	u32 if_sid;
	u32 node_sid;

	err = FUNC1(ifindex, &if_sid);
	if (err)
		return err;
	err = FUNC0(peer_sid, if_sid,
			   SECCLASS_NETIF, NETIF__INGRESS, ad);
	if (err)
		return err;

	err = FUNC2(addrp, family, &node_sid);
	if (err)
		return err;
	return FUNC0(peer_sid, node_sid,
			    SECCLASS_NODE, NODE__RECVFROM, ad);
}