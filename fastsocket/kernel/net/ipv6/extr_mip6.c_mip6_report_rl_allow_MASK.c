#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct in6_addr {int dummy; } ;
struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_4__ {int iif; int /*<<< orphan*/  lock; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; TYPE_1__ stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct in6_addr*) ; 
 TYPE_2__ mip6_report_rl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct timeval *stamp,
				       struct in6_addr *dst,
				       struct in6_addr *src, int iif)
{
	int allow = 0;

	FUNC2(&mip6_report_rl.lock);
	if (mip6_report_rl.stamp.tv_sec != stamp->tv_sec ||
	    mip6_report_rl.stamp.tv_usec != stamp->tv_usec ||
	    mip6_report_rl.iif != iif ||
	    !FUNC1(&mip6_report_rl.src, src) ||
	    !FUNC1(&mip6_report_rl.dst, dst)) {
		mip6_report_rl.stamp.tv_sec = stamp->tv_sec;
		mip6_report_rl.stamp.tv_usec = stamp->tv_usec;
		mip6_report_rl.iif = iif;
		FUNC0(&mip6_report_rl.src, src);
		FUNC0(&mip6_report_rl.dst, dst);
		allow = 1;
	}
	FUNC3(&mip6_report_rl.lock);
	return allow;
}