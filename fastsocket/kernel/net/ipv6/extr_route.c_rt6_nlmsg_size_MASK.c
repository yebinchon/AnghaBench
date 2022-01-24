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
struct rtmsg {int dummy; } ;
struct rta_cacheinfo {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int RTAX_MAX ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(sizeof(struct rtmsg))
	       + FUNC1(16) /* RTA_SRC */
	       + FUNC1(16) /* RTA_DST */
	       + FUNC1(16) /* RTA_GATEWAY */
	       + FUNC1(16) /* RTA_PREFSRC */
	       + FUNC1(4) /* RTA_TABLE */
	       + FUNC1(4) /* RTA_IIF */
	       + FUNC1(4) /* RTA_OIF */
	       + FUNC1(4) /* RTA_PRIORITY */
	       + RTAX_MAX * FUNC1(4) /* RTA_METRICS */
	       + FUNC1(sizeof(struct rta_cacheinfo));
}