#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_8__ {scalar_t__ tv64; } ;
typedef  TYPE_1__ ktime_t ;

/* Variables and functions */
 scalar_t__ NSEC_PER_SEC ; 
 unsigned long FUNC0 (scalar_t__,scalar_t__) ; 
 TYPE_1__ FUNC1 (long,unsigned long) ; 
 TYPE_1__ FUNC2 (TYPE_1__ const,TYPE_1__) ; 
 scalar_t__ FUNC3 (int) ; 

ktime_t FUNC4(const ktime_t kt, u64 nsec)
{
	ktime_t tmp;

	if (FUNC3(nsec < NSEC_PER_SEC)) {
		tmp.tv64 = nsec;
	} else {
		unsigned long rem = FUNC0(nsec, NSEC_PER_SEC);

		tmp = FUNC1((long)nsec, rem);
	}

	return FUNC2(kt, tmp);
}