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
typedef  scalar_t__ u64 ;
struct timespec {unsigned long member_0; unsigned long member_1; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (struct timespec*) ; 

__attribute__((used)) static u64 FUNC2(unsigned long sec, unsigned long nsec)
{
	if (sec || nsec) {
		struct timespec ts = {sec, nsec};
		return FUNC0() + FUNC1(&ts);
	} else
		return 0;
}