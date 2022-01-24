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

/* Variables and functions */
 int IPV6_ADDR_LINKLOCAL ; 
 int IPV6_ADDR_LOOPBACK ; 
#define  IPV6_ADDR_SCOPE_LINKLOCAL 130 
#define  IPV6_ADDR_SCOPE_NODELOCAL 129 
#define  IPV6_ADDR_SCOPE_SITELOCAL 128 
 int FUNC0 (int const) ; 
 int IPV6_ADDR_SITELOCAL ; 

__attribute__((used)) static inline unsigned FUNC1(unsigned scope)
{
	switch(scope) {
	case IPV6_ADDR_SCOPE_NODELOCAL:
		return (FUNC0(IPV6_ADDR_SCOPE_NODELOCAL) |
			IPV6_ADDR_LOOPBACK);
	case IPV6_ADDR_SCOPE_LINKLOCAL:
		return (FUNC0(IPV6_ADDR_SCOPE_LINKLOCAL) |
			IPV6_ADDR_LINKLOCAL);
	case IPV6_ADDR_SCOPE_SITELOCAL:
		return (FUNC0(IPV6_ADDR_SCOPE_SITELOCAL) |
			IPV6_ADDR_SITELOCAL);
	}
	return FUNC0(scope);
}