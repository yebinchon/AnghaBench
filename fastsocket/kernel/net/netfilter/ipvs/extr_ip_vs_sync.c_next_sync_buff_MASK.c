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
struct ip_vs_sync_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPVS_SYNC_FLUSH_TIME ; 
 struct ip_vs_sync_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct ip_vs_sync_buff* FUNC1 () ; 

__attribute__((used)) static inline struct ip_vs_sync_buff *
FUNC2(void)
{
	struct ip_vs_sync_buff *sb;

	sb = FUNC1();
	if (sb)
		return sb;
	/* Do not delay entries in buffer for more than 2 seconds */
	return FUNC0(IPVS_SYNC_FLUSH_TIME);
}