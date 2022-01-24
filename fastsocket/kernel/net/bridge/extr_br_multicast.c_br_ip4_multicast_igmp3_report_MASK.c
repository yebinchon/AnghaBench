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
struct sk_buff {int data; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;
struct igmpv3_report {int /*<<< orphan*/  ngrec; } ;
struct igmpv3_grec {int grec_type; int /*<<< orphan*/  grec_nsrcs; int /*<<< orphan*/  grec_mca; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
#define  IGMPV3_ALLOW_NEW_SOURCES 133 
#define  IGMPV3_BLOCK_OLD_SOURCES 132 
#define  IGMPV3_CHANGE_TO_EXCLUDE 131 
#define  IGMPV3_CHANGE_TO_INCLUDE 130 
#define  IGMPV3_MODE_IS_EXCLUDE 129 
#define  IGMPV3_MODE_IS_INCLUDE 128 
 int FUNC0 (struct net_bridge*,struct net_bridge_port*,int /*<<< orphan*/ ) ; 
 struct igmpv3_report* FUNC1 (struct sk_buff*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC4(struct net_bridge *br,
					 struct net_bridge_port *port,
					 struct sk_buff *skb)
{
	struct igmpv3_report *ih;
	struct igmpv3_grec *grec;
	int i;
	int len;
	int num;
	int type;
	int err = 0;
	__be32 group;

	if (!FUNC3(skb, sizeof(*ih)))
		return -EINVAL;

	ih = FUNC1(skb);
	num = FUNC2(ih->ngrec);
	len = sizeof(*ih);

	for (i = 0; i < num; i++) {
		len += sizeof(*grec);
		if (!FUNC3(skb, len))
			return -EINVAL;

		grec = (void *)(skb->data + len - sizeof(*grec));
		group = grec->grec_mca;
		type = grec->grec_type;

		len += FUNC2(grec->grec_nsrcs) * 4;
		if (!FUNC3(skb, len))
			return -EINVAL;

		/* We treat this as an IGMPv2 report for now. */
		switch (type) {
		case IGMPV3_MODE_IS_INCLUDE:
		case IGMPV3_MODE_IS_EXCLUDE:
		case IGMPV3_CHANGE_TO_INCLUDE:
		case IGMPV3_CHANGE_TO_EXCLUDE:
		case IGMPV3_ALLOW_NEW_SOURCES:
		case IGMPV3_BLOCK_OLD_SOURCES:
			break;

		default:
			continue;
		}

		err = FUNC0(br, port, group);
		if (err)
			break;
	}

	return err;
}