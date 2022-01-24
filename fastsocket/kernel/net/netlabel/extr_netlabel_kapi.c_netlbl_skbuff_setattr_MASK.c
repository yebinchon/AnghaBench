#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int /*<<< orphan*/  domain; } ;
struct TYPE_2__ {int /*<<< orphan*/  cipsov4; } ;
struct netlbl_domaddr4_map {TYPE_1__ type_def; int /*<<< orphan*/  type; } ;
struct iphdr {int /*<<< orphan*/  daddr; } ;

/* Variables and functions */
#define  AF_INET 131 
#define  AF_INET6 130 
 int ENOENT ; 
 int EPROTONOSUPPORT ; 
#define  NETLBL_NLTYPE_CIPSOV4 129 
#define  NETLBL_NLTYPE_UNLABELED 128 
 int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,struct netlbl_lsm_secattr const*) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 struct netlbl_domaddr4_map* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(struct sk_buff *skb,
			  u16 family,
			  const struct netlbl_lsm_secattr *secattr)
{
	int ret_val;
	struct iphdr *hdr4;
	struct netlbl_domaddr4_map *af4_entry;

	FUNC4();
	switch (family) {
	case AF_INET:
		hdr4 = FUNC2(skb);
		af4_entry = FUNC3(secattr->domain,
						       hdr4->daddr);
		if (af4_entry == NULL) {
			ret_val = -ENOENT;
			goto skbuff_setattr_return;
		}
		switch (af4_entry->type) {
		case NETLBL_NLTYPE_CIPSOV4:
			ret_val = FUNC1(skb,
						   af4_entry->type_def.cipsov4,
						   secattr);
			break;
		case NETLBL_NLTYPE_UNLABELED:
			/* just delete the protocols we support for right now
			 * but we could remove other protocols if needed */
			ret_val = FUNC0(skb);
			break;
		default:
			ret_val = -ENOENT;
		}
		break;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case AF_INET6:
		/* since we don't support any IPv6 labeling protocols right
		 * now we can optimize everything away until we do */
		ret_val = 0;
		break;
#endif /* IPv6 */
	default:
		ret_val = -EPROTONOSUPPORT;
	}

skbuff_setattr_return:
	FUNC5();
	return ret_val;
}