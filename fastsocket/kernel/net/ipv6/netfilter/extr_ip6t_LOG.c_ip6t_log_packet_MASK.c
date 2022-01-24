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
typedef  int /*<<< orphan*/  u_int8_t ;
struct sk_buff {scalar_t__ mac_header; scalar_t__ network_header; unsigned char const* head; TYPE_3__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  level; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
struct nf_loginfo {TYPE_2__ u; } ;
struct net_device {char* name; } ;
struct iphdr {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_6__ {unsigned int hard_header_len; scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ARPHRD_SIT ; 
 int /*<<< orphan*/  ETH_HLEN ; 
 struct nf_loginfo default_loginfo ; 
 int /*<<< orphan*/  FUNC0 (struct nf_loginfo const*,struct sk_buff const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  log_lock ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 unsigned char* FUNC2 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(u_int8_t pf,
		unsigned int hooknum,
		const struct sk_buff *skb,
		const struct net_device *in,
		const struct net_device *out,
		const struct nf_loginfo *loginfo,
		const char *prefix)
{
	if (!loginfo)
		loginfo = &default_loginfo;

	FUNC4(&log_lock);
	FUNC1("<%d>%sIN=%s OUT=%s ", loginfo->u.log.level,
		prefix,
		in ? in->name : "",
		out ? out->name : "");
	if (in && !out) {
		unsigned int len;
		/* MAC logging for input chain only. */
		FUNC1("MAC=");
		if (skb->dev && (len = skb->dev->hard_header_len) &&
		    skb->mac_header != skb->network_header) {
			const unsigned char *p = FUNC2(skb);
			int i;

			if (skb->dev->type == ARPHRD_SIT &&
			    (p -= ETH_HLEN) < skb->head)
				p = NULL;

			if (p != NULL) {
				for (i = 0; i < len; i++)
					FUNC1("%02x%s", p[i],
					       i == len - 1 ? "" : ":");
			}
			FUNC1(" ");

			if (skb->dev->type == ARPHRD_SIT) {
				const struct iphdr *iph =
					(struct iphdr *)FUNC2(skb);
				FUNC1("TUNNEL=%pI4->%pI4 ",
				       &iph->saddr, &iph->daddr);
			}
		} else
			FUNC1(" ");
	}

	FUNC0(loginfo, skb, FUNC3(skb), 1);
	FUNC1("\n");
	FUNC5(&log_lock);
}