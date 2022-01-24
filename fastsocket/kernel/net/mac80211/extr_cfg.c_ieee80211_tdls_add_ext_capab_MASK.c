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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLAN_EID_EXT_CAPABILITY ; 
 int /*<<< orphan*/  WLAN_EXT_CAPA5_TDLS_ENABLED ; 
 scalar_t__ FUNC0 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC1(struct sk_buff *skb)
{
	u8 *pos = (void *)FUNC0(skb, 7);

	*pos++ = WLAN_EID_EXT_CAPABILITY;
	*pos++ = 5; /* len */
	*pos++ = 0x0;
	*pos++ = 0x0;
	*pos++ = 0x0;
	*pos++ = 0x0;
	*pos++ = WLAN_EXT_CAPA5_TDLS_ENABLED;
}