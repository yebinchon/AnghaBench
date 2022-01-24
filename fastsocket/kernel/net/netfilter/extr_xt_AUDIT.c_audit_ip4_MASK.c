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
struct sk_buff {int dummy; } ;
struct iphdr {int ihl; int /*<<< orphan*/  protocol; int /*<<< orphan*/  frag_off; int /*<<< orphan*/  id; int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  _iph ;

/* Variables and functions */
 int IP_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct iphdr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct iphdr*) ; 

__attribute__((used)) static void FUNC4(struct audit_buffer *ab, struct sk_buff *skb)
{
	struct iphdr _iph;
	const struct iphdr *ih;

	ih = FUNC3(skb, 0, sizeof(_iph), &_iph);
	if (!ih) {
		FUNC0(ab, " truncated=1");
		return;
	}

	FUNC0(ab, " saddr=%pI4 daddr=%pI4 ipid=%hu proto=%hhu",
		&ih->saddr, &ih->daddr, FUNC2(ih->id), ih->protocol);

	if (FUNC2(ih->frag_off) & IP_OFFSET) {
		FUNC0(ab, " frag=1");
		return;
	}

	FUNC1(ab, skb, ih->protocol, ih->ihl * 4);
}