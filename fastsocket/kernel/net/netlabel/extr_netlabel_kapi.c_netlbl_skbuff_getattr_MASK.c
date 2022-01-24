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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (struct sk_buff const*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff const*,struct netlbl_lsm_secattr*) ; 
 int FUNC2 (struct sk_buff const*,int,struct netlbl_lsm_secattr*) ; 

int FUNC3(const struct sk_buff *skb,
			  u16 family,
			  struct netlbl_lsm_secattr *secattr)
{
	switch (family) {
	case AF_INET:
		if (FUNC0(skb) &&
		    FUNC1(skb, secattr) == 0)
			return 0;
		break;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case AF_INET6:
		break;
#endif /* IPv6 */
	}

	return FUNC2(skb, family, secattr);
}