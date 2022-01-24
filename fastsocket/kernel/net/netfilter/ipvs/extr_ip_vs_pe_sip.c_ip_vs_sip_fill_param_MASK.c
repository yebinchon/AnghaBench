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
struct udphdr {int dummy; } ;
struct sk_buff {unsigned int len; char* data; } ;
struct ip_vs_iphdr {scalar_t__ protocol; int len; } ;
struct ip_vs_conn_param {unsigned int pe_data_len; int /*<<< orphan*/  pe_data; int /*<<< orphan*/  af; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IPPROTO_UDP ; 
 scalar_t__ FUNC0 (char const*,unsigned int,unsigned int,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ip_vs_iphdr*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 

__attribute__((used)) static int
FUNC6(struct ip_vs_conn_param *p, struct sk_buff *skb)
{
	struct ip_vs_iphdr iph;
	unsigned int dataoff, datalen, matchoff, matchlen;
	const char *dptr;
	int retc;

	FUNC1(p->af, FUNC5(skb), &iph);

	/* Only useful with UDP */
	if (iph.protocol != IPPROTO_UDP)
		return -EINVAL;

	/* No Data ? */
	dataoff = iph.len + sizeof(struct udphdr);
	if (dataoff >= skb->len)
		return -EINVAL;

	if ((retc=FUNC4(skb)) < 0)
		return retc;
	dptr = skb->data + dataoff;
	datalen = skb->len - dataoff;

	if (FUNC0(dptr, dataoff, datalen, &matchoff, &matchlen))
		return -EINVAL;

	p->pe_data = FUNC2(matchlen, GFP_ATOMIC);
	if (!p->pe_data)
		return -ENOMEM;

	/* N.B: pe_data is only set on success,
	 * this allows fallback to the default persistence logic on failure
	 */
	FUNC3(p->pe_data, dptr + matchoff, matchlen);
	p->pe_data_len = matchlen;

	return 0;
}