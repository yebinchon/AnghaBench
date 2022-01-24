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
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;

/* Variables and functions */
 struct timespec CURRENT_TIME ; 
 long EINVAL ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 scalar_t__ NSEC_PER_SEC ; 
 int FUNC0 (struct timespec*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static long FUNC2(struct timespec *p)
{
	struct timespec nowts;
	long timeout;

	if (p) {
		if (FUNC1(p->tv_nsec < 0 || p->tv_sec < 0
			|| p->tv_nsec >= NSEC_PER_SEC))
			return -EINVAL;
		nowts = CURRENT_TIME;
		/* first subtract as jiffies can't be too big */
		p->tv_sec -= nowts.tv_sec;
		if (p->tv_nsec < nowts.tv_nsec) {
			p->tv_nsec += NSEC_PER_SEC;
			p->tv_sec--;
		}
		p->tv_nsec -= nowts.tv_nsec;
		if (p->tv_sec < 0)
			return 0;

		timeout = FUNC0(p) + 1;
	} else
		return MAX_SCHEDULE_TIMEOUT;

	return timeout;
}