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
struct in6_addr {int dummy; } ;
struct ifla_cacheinfo {int dummy; } ;

/* Variables and functions */
 int DEVCONF_MAX ; 
 int ICMP6_MIB_MAX ; 
 int IPSTATS_MIB_MAX ; 
 size_t FUNC0 (int) ; 

__attribute__((used)) static inline size_t FUNC1(void)
{
	return FUNC0(4) /* IFLA_INET6_FLAGS */
	     + FUNC0(sizeof(struct ifla_cacheinfo))
	     + FUNC0(DEVCONF_MAX * 4) /* IFLA_INET6_CONF */
	     + FUNC0(IPSTATS_MIB_MAX * 8) /* IFLA_INET6_STATS */
	     + FUNC0(ICMP6_MIB_MAX * 8) /* IFLA_INET6_ICMP6STATS */
	     + FUNC0(sizeof(struct in6_addr)); /* IFLA_INET6_TOKEN */
}