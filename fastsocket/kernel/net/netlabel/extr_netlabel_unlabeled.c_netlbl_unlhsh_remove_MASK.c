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
typedef  int u32 ;
struct netlbl_unlhsh_iface {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct net {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  netlabel_mgmt_protocount ; 
 int /*<<< orphan*/  FUNC3 (struct netlbl_unlhsh_iface*) ; 
 int /*<<< orphan*/  netlbl_unlhsh_def ; 
 int FUNC4 (struct net*,struct netlbl_unlhsh_iface*,void const*,void const*,struct netlbl_audit*) ; 
 int FUNC5 (struct net*,struct netlbl_unlhsh_iface*,void const*,void const*,struct netlbl_audit*) ; 
 struct netlbl_unlhsh_iface* FUNC6 (int /*<<< orphan*/ ) ; 
 struct netlbl_unlhsh_iface* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct net *net,
			 const char *dev_name,
			 const void *addr,
			 const void *mask,
			 u32 addr_len,
			 struct netlbl_audit *audit_info)
{
	int ret_val;
	struct net_device *dev;
	struct netlbl_unlhsh_iface *iface;

	if (addr_len != sizeof(struct in_addr) &&
	    addr_len != sizeof(struct in6_addr))
		return -EINVAL;

	FUNC8();
	if (dev_name != NULL) {
		dev = FUNC1(net, dev_name);
		if (dev == NULL) {
			ret_val = -ENODEV;
			goto unlhsh_remove_return;
		}
		iface = FUNC6(dev->ifindex);
		FUNC2(dev);
	} else
		iface = FUNC7(netlbl_unlhsh_def);
	if (iface == NULL) {
		ret_val = -ENOENT;
		goto unlhsh_remove_return;
	}
	switch (addr_len) {
	case sizeof(struct in_addr):
		ret_val = FUNC4(net,
						     iface, addr, mask,
						     audit_info);
		break;
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case sizeof(struct in6_addr):
		ret_val = netlbl_unlhsh_remove_addr6(net,
						     iface, addr, mask,
						     audit_info);
		break;
#endif /* IPv6 */
	default:
		ret_val = -EINVAL;
	}
	if (ret_val == 0) {
		FUNC3(iface);
		FUNC0(&netlabel_mgmt_protocount);
	}

unlhsh_remove_return:
	FUNC9();
	return ret_val;
}