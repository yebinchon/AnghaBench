#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vxlan_port {TYPE_2__* vs; } ;
struct vport {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {int /*<<< orphan*/  sport; } ;
struct TYPE_5__ {TYPE_1__* sock; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  OVS_TUNNEL_ATTR_DST_PORT ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct vxlan_port* FUNC3 (struct vport const*) ; 

__attribute__((used)) static int FUNC4(const struct vport *vport, struct sk_buff *skb)
{
	struct vxlan_port *vxlan_port = FUNC3(vport);
	__be16 dst_port = FUNC0(vxlan_port->vs->sock->sk)->sport;

	if (FUNC1(skb, OVS_TUNNEL_ATTR_DST_PORT, FUNC2(dst_port)))
		return -EMSGSIZE;
	return 0;
}