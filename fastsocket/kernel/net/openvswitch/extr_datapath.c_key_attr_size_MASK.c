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
 size_t FUNC0 (int) ; 

__attribute__((used)) static size_t FUNC1(void)
{
	return    FUNC0(4)   /* OVS_KEY_ATTR_PRIORITY */
		+ FUNC0(0)   /* OVS_KEY_ATTR_TUNNEL */
		  + FUNC0(8)   /* OVS_TUNNEL_KEY_ATTR_ID */
		  + FUNC0(4)   /* OVS_TUNNEL_KEY_ATTR_IPV4_SRC */
		  + FUNC0(4)   /* OVS_TUNNEL_KEY_ATTR_IPV4_DST */
		  + FUNC0(1)   /* OVS_TUNNEL_KEY_ATTR_TOS */
		  + FUNC0(1)   /* OVS_TUNNEL_KEY_ATTR_TTL */
		  + FUNC0(0)   /* OVS_TUNNEL_KEY_ATTR_DONT_FRAGMENT */
		  + FUNC0(0)   /* OVS_TUNNEL_KEY_ATTR_CSUM */
		+ FUNC0(4)   /* OVS_KEY_ATTR_IN_PORT */
		+ FUNC0(4)   /* OVS_KEY_ATTR_SKB_MARK */
		+ FUNC0(12)  /* OVS_KEY_ATTR_ETHERNET */
		+ FUNC0(2)   /* OVS_KEY_ATTR_ETHERTYPE */
		+ FUNC0(4)   /* OVS_KEY_ATTR_8021Q */
		+ FUNC0(0)   /* OVS_KEY_ATTR_ENCAP */
		+ FUNC0(2)   /* OVS_KEY_ATTR_ETHERTYPE */
		+ FUNC0(40)  /* OVS_KEY_ATTR_IPV6 */
		+ FUNC0(2)   /* OVS_KEY_ATTR_ICMPV6 */
		+ FUNC0(28); /* OVS_KEY_ATTR_ND */
}