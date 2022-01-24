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
struct dst_entry {int* metrics; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_PMTU_UPDATE ; 
 int RTAX_LOCK ; 
 int RTAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dst_entry*,int) ; 
 int FUNC2 (struct dst_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_entry*,int /*<<< orphan*/ ) ; 
 int ip_rt_min_pmtu ; 
 int /*<<< orphan*/  ip_rt_mtu_expires ; 

__attribute__((used)) static void FUNC4(struct dst_entry *dst, u32 mtu)
{
	if (FUNC2(dst) > mtu && mtu >= 68 &&
	    !(FUNC1(dst, RTAX_MTU))) {
		if (mtu < ip_rt_min_pmtu) {
			mtu = ip_rt_min_pmtu;
			dst->metrics[RTAX_LOCK-1] |= (1 << RTAX_MTU);
		}
		dst->metrics[RTAX_MTU-1] = mtu;
		FUNC3(dst, ip_rt_mtu_expires);
		FUNC0(NETEVENT_PMTU_UPDATE, dst);
	}
}