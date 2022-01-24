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
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int dummy; } ;
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_UNLBL_STCADD ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 struct net_device* FUNC3 (struct net*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  netlabel_mgmt_protocount ; 
 int /*<<< orphan*/  FUNC5 (struct audit_buffer*,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct audit_buffer*,int,char const*,struct in6_addr*,struct in6_addr*) ; 
 struct audit_buffer* FUNC7 (int /*<<< orphan*/ ,struct netlbl_audit*) ; 
 int FUNC8 (struct netlbl_unlhsh_iface*,struct in_addr*,struct in_addr*,int) ; 
 int FUNC9 (struct netlbl_unlhsh_iface*,struct in6_addr*,struct in6_addr*,int) ; 
 struct netlbl_unlhsh_iface* FUNC10 (int) ; 
 int /*<<< orphan*/  netlbl_unlhsh_def ; 
 struct netlbl_unlhsh_iface* FUNC11 (int) ; 
 struct netlbl_unlhsh_iface* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*,int) ; 
 scalar_t__ FUNC16 (int,char**,int*) ; 

int FUNC17(struct net *net,
		      const char *dev_name,
		      const void *addr,
		      const void *mask,
		      u32 addr_len,
		      u32 secid,
		      struct netlbl_audit *audit_info)
{
	int ret_val;
	int ifindex;
	struct net_device *dev;
	struct netlbl_unlhsh_iface *iface;
	struct audit_buffer *audit_buf = NULL;
	char *secctx = NULL;
	u32 secctx_len;

	if (addr_len != sizeof(struct in_addr) &&
	    addr_len != sizeof(struct in6_addr))
		return -EINVAL;

	FUNC13();
	if (dev_name != NULL) {
		dev = FUNC3(net, dev_name);
		if (dev == NULL) {
			ret_val = -ENODEV;
			goto unlhsh_add_return;
		}
		ifindex = dev->ifindex;
		FUNC4(dev);
		iface = FUNC11(ifindex);
	} else {
		ifindex = 0;
		iface = FUNC12(netlbl_unlhsh_def);
	}
	if (iface == NULL) {
		iface = FUNC10(ifindex);
		if (iface == NULL) {
			ret_val = -ENOMEM;
			goto unlhsh_add_return;
		}
	}
	audit_buf = FUNC7(AUDIT_MAC_UNLBL_STCADD,
					      audit_info);
	switch (addr_len) {
	case sizeof(struct in_addr): {
		struct in_addr *addr4, *mask4;

		addr4 = (struct in_addr *)addr;
		mask4 = (struct in_addr *)mask;
		ret_val = FUNC8(iface, addr4, mask4, secid);
		if (audit_buf != NULL)
			FUNC5(audit_buf, 1,
						  dev_name,
						  addr4->s_addr,
						  mask4->s_addr);
		break;
	}
#if defined(CONFIG_IPV6) || defined(CONFIG_IPV6_MODULE)
	case sizeof(struct in6_addr): {
		struct in6_addr *addr6, *mask6;

		addr6 = (struct in6_addr *)addr;
		mask6 = (struct in6_addr *)mask;
		ret_val = netlbl_unlhsh_add_addr6(iface, addr6, mask6, secid);
		if (audit_buf != NULL)
			netlbl_af6list_audit_addr(audit_buf, 1,
						  dev_name,
						  addr6, mask6);
		break;
	}
#endif /* IPv6 */
	default:
		ret_val = -EINVAL;
	}
	if (ret_val == 0)
		FUNC0(&netlabel_mgmt_protocount);

unlhsh_add_return:
	FUNC14();
	if (audit_buf != NULL) {
		if (FUNC16(secid,
					     &secctx,
					     &secctx_len) == 0) {
			FUNC2(audit_buf, " sec_obj=%s", secctx);
			FUNC15(secctx, secctx_len);
		}
		FUNC2(audit_buf, " res=%u", ret_val == 0 ? 1 : 0);
		FUNC1(audit_buf);
	}
	return ret_val;
}