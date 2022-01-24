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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct ovs_header {int dummy; } ;
struct nlattr {int /*<<< orphan*/  nla_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC4(const struct sk_buff *skb,
			      const struct nlattr *userdata)
{
	size_t size = FUNC1(sizeof(struct ovs_header))
		+ FUNC3(skb->len) /* OVS_PACKET_ATTR_PACKET */
		+ FUNC3(FUNC2()); /* OVS_PACKET_ATTR_KEY */

	/* OVS_PACKET_ATTR_USERDATA */
	if (userdata)
		size += FUNC0(userdata->nla_len);

	return size;
}