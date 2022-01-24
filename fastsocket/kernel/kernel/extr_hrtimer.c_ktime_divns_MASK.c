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
typedef  int u64 ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned long) ; 
 int FUNC1 (int /*<<< orphan*/  const) ; 

u64 FUNC2(const ktime_t kt, s64 div)
{
	u64 dclc;
	int sft = 0;

	dclc = FUNC1(kt);
	/* Make sure the divisor is less than 2^32: */
	while (div >> 32) {
		sft++;
		div >>= 1;
	}
	dclc >>= sft;
	FUNC0(dclc, (unsigned long) div);

	return dclc;
}