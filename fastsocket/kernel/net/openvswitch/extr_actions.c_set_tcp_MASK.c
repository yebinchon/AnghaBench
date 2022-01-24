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
struct tcphdr {scalar_t__ source; scalar_t__ dest; int /*<<< orphan*/  check; } ;
struct sk_buff {int dummy; } ;
struct ovs_key_tcp {scalar_t__ tcp_src; scalar_t__ tcp_dst; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct tcphdr* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb, const struct ovs_key_tcp *tcp_port_key)
{
	struct tcphdr *th;
	int err;

	err = FUNC0(skb, FUNC2(skb) +
				 sizeof(struct tcphdr));
	if (FUNC4(err))
		return err;

	th = FUNC3(skb);
	if (tcp_port_key->tcp_src != th->source)
		FUNC1(skb, &th->source, tcp_port_key->tcp_src, &th->check);

	if (tcp_port_key->tcp_dst != th->dest)
		FUNC1(skb, &th->dest, tcp_port_key->tcp_dst, &th->check);

	return 0;
}