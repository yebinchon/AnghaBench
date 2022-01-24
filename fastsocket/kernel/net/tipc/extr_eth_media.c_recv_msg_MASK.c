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
typedef  scalar_t__ u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {scalar_t__ pkt_type; scalar_t__ len; int /*<<< orphan*/ * next; scalar_t__ data; } ;
struct packet_type {scalar_t__ af_packet_priv; } ;
struct net_device {int dummy; } ;
struct eth_bearer {int bearer; } ;

/* Variables and functions */
 scalar_t__ PACKET_BROADCAST ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *buf, struct net_device *dev,
		    struct packet_type *pt, struct net_device *orig_dev)
{
	struct eth_bearer *eb_ptr = (struct eth_bearer *)pt->af_packet_priv;
	u32 size;

	if (!FUNC4(FUNC0(dev), &init_net)) {
		FUNC1(buf);
		return 0;
	}

	if (FUNC2(eb_ptr->bearer)) {
		if (FUNC2(buf->pkt_type <= PACKET_BROADCAST)) {
			size = FUNC3((struct tipc_msg *)buf->data);
			FUNC5(buf, size);
			if (FUNC2(buf->len == size)) {
				buf->next = NULL;
				FUNC6(buf, eb_ptr->bearer);
				return 0;
			}
		}
	}
	FUNC1(buf);
	return 0;
}