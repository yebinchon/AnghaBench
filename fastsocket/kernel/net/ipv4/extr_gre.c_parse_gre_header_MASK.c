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
typedef  int u8 ;
struct tnl_ptk_info {int /*<<< orphan*/  proto; void* seq; void* key; int /*<<< orphan*/  flags; } ;
struct sk_buff {int dummy; } ;
struct gre_base_hdr {int flags; int /*<<< orphan*/  protocol; } ;
typedef  void* __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int /*<<< orphan*/  ETH_P_WCCP ; 
 int GRE_CSUM ; 
 int GRE_KEY ; 
 int GRE_ROUTING ; 
 int GRE_SEQ ; 
 int GRE_VERSION ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct tnl_ptk_info *tpi,
			    bool *csum_err)
{
	unsigned int ip_hlen = FUNC4(skb);
	const struct gre_base_hdr *greh;
	__be32 *options;
	int hdr_len;

	if (FUNC8(!FUNC6(skb, sizeof(struct gre_base_hdr))))
		return -EINVAL;

	greh = (struct gre_base_hdr *)(FUNC7(skb) + ip_hlen);
	if (FUNC8(greh->flags & (GRE_VERSION | GRE_ROUTING)))
		return -EINVAL;

	tpi->flags = FUNC1(greh->flags);
	hdr_len = FUNC3(tpi->flags);

	if (!FUNC6(skb, hdr_len))
		return -EINVAL;

	greh = (struct gre_base_hdr *)(FUNC7(skb) + ip_hlen);
	tpi->proto = greh->protocol;

	options = (__be32 *)(greh + 1);
	if (greh->flags & GRE_CSUM) {
		if (FUNC0(skb)) {
			*csum_err = true;
			return -EINVAL;
		}
		options++;
	}

	if (greh->flags & GRE_KEY) {
		tpi->key = *options;
		options++;
	} else
		tpi->key = 0;

	if (FUNC8(greh->flags & GRE_SEQ)) {
		tpi->seq = *options;
		options++;
	} else
		tpi->seq = 0;

	/* WCCP version 1 and 2 protocol decoding.
	 * - Change protocol to IP
	 * - When dealing with WCCPv2, Skip extra 4 bytes in GRE header
	 */
	if (greh->flags == 0 && tpi->proto == FUNC2(ETH_P_WCCP)) {
		tpi->proto = FUNC2(ETH_P_IP);
		if ((*(u8 *)options & 0xF0) != 0x40) {
			hdr_len += 4;
			if (!FUNC6(skb, hdr_len))
				return -EINVAL;
		}
	}

	return FUNC5(skb, hdr_len, tpi->proto);
}