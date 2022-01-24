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
typedef  int u_int8_t ;
typedef  int u_int16_t ;
struct xt_tcpoptstrip_target_info {int /*<<< orphan*/  strip_bmap; } ;
struct tcphdr {int /*<<< orphan*/  check; } ;
struct sk_buff {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 unsigned int NF_DROP ; 
 int TCPOPT_NOP ; 
 unsigned int XT_CONTINUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,unsigned int) ; 
 unsigned int FUNC3 (int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 unsigned int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int
FUNC8(struct sk_buff *skb,
			  const struct xt_tcpoptstrip_target_info *info,
			  unsigned int tcphoff, unsigned int minlen)
{
	unsigned int optl, i, j;
	struct tcphdr *tcph;
	u_int16_t n, o;
	u_int8_t *opt;

	if (!FUNC4(skb, skb->len))
		return NF_DROP;

	tcph = (struct tcphdr *)(FUNC5(skb) + tcphoff);
	opt  = (u_int8_t *)tcph;

	/*
	 * Walk through all TCP options - if we find some option to remove,
	 * set all octets to %TCPOPT_NOP and adjust checksum.
	 */
	for (i = sizeof(struct tcphdr); i < FUNC6(skb); i += optl) {
		optl = FUNC3(opt, i);

		if (i + optl > FUNC6(skb))
			break;

		if (!FUNC7(info->strip_bmap, opt[i]))
			continue;

		for (j = 0; j < optl; ++j) {
			o = opt[i+j];
			n = TCPOPT_NOP;
			if ((i + j) % 2 == 0) {
				o <<= 8;
				n <<= 8;
			}
			FUNC1(&tcph->check, skb, FUNC0(o),
						 FUNC0(n), 0);
		}
		FUNC2(opt + i, TCPOPT_NOP, optl);
	}

	return XT_CONTINUE;
}