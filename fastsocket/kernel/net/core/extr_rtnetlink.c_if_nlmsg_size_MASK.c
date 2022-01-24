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
struct rtnl_link_stats64 {int dummy; } ;
struct rtnl_link_stats {int dummy; } ;
struct rtnl_link_ifmap {int dummy; } ;
struct net_device {int dummy; } ;
struct ifinfomsg {int dummy; } ;

/* Variables and functions */
 int IFALIASZ ; 
 int IFNAMSIZ ; 
 int MAX_ADDR_LEN ; 
 size_t FUNC0 (int) ; 
 int RTEXT_FILTER_VF ; 
 size_t FUNC1 (int) ; 
 size_t FUNC2 (struct net_device const*) ; 
 size_t FUNC3 (struct net_device const*) ; 
 size_t FUNC4 (struct net_device const*) ; 
 size_t FUNC5 (struct net_device const*,int) ; 

__attribute__((used)) static inline size_t FUNC6(const struct net_device *dev,
				     u32 ext_filter_mask)
{
	return FUNC0(sizeof(struct ifinfomsg))
	       + FUNC1(IFNAMSIZ) /* IFLA_IFNAME */
	       + FUNC1(IFALIASZ) /* IFLA_IFALIAS */
	       + FUNC1(IFNAMSIZ) /* IFLA_QDISC */
	       + FUNC1(sizeof(struct rtnl_link_ifmap))
	       + FUNC1(sizeof(struct rtnl_link_stats))
	       + FUNC1(sizeof(struct rtnl_link_stats64))
	       + FUNC1(MAX_ADDR_LEN) /* IFLA_ADDRESS */
	       + FUNC1(MAX_ADDR_LEN) /* IFLA_BROADCAST */
	       + FUNC1(4) /* IFLA_TXQLEN */
	       + FUNC1(4) /* IFLA_WEIGHT */
	       + FUNC1(4) /* IFLA_MTU */
	       + FUNC1(4) /* IFLA_LINK */
	       + FUNC1(4) /* IFLA_MASTER */
	       + FUNC1(1) /* IFLA_OPERSTATE */
	       + FUNC1(1) /* IFLA_LINKMODE */
	       + FUNC1(ext_filter_mask
			        & RTEXT_FILTER_VF ? 4 : 0) /* IFLA_NUM_VF */
	       + FUNC5(dev, ext_filter_mask) /* IFLA_VFINFO_LIST */
	       + FUNC4(dev) /* IFLA_VF_PORTS + IFLA_PORT_SELF */
	       + FUNC3(dev) /* IFLA_LINKINFO */
	       + FUNC2(dev); /* IFLA_AF_SPEC */
}