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
struct timecompare {int last_update; int offset; int skew; } ;
typedef  int s64 ;

/* Variables and functions */
 int TIMECOMPARE_NEW_SKEW_PER_16 ; 
 int TIMECOMPARE_SKEW_RESOLUTION ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct timecompare*,int*,int*) ; 
 scalar_t__ FUNC2 (int) ; 

void FUNC3(struct timecompare *sync,
			  u64 source_tstamp)
{
	s64 offset;
	u64 average_time;

	if (!FUNC1(sync, &offset, &average_time))
		return;

	if (!sync->last_update) {
		sync->last_update = average_time;
		sync->offset = offset;
		sync->skew = 0;
	} else {
		s64 delta_nsec = average_time - sync->last_update;

		/* avoid division by negative or small deltas */
		if (delta_nsec >= 10000) {
			s64 delta_offset_nsec = offset - sync->offset;
			s64 skew; /* delta_offset_nsec *
				     TIMECOMPARE_SKEW_RESOLUTION /
				     delta_nsec */
			u64 divisor;

			/* div_s64() is limited to 32 bit divisor */
			skew = delta_offset_nsec * TIMECOMPARE_SKEW_RESOLUTION;
			divisor = delta_nsec;
			while (FUNC2(divisor >= ((s64)1) << 32)) {
				/* divide both by 2; beware, right shift
				   of negative value has undefined
				   behavior and can only be used for
				   the positive divisor */
				skew = FUNC0(skew, 2);
				divisor >>= 1;
			}
			skew = FUNC0(skew, divisor);

			/*
			 * Calculate new overall skew as 4/16 the
			 * old value and 12/16 the new one. This is
			 * a rather arbitrary tradeoff between
			 * only using the latest measurement (0/16 and
			 * 16/16) and even more weight on past measurements.
			 */
#define TIMECOMPARE_NEW_SKEW_PER_16 12
			sync->skew =
				FUNC0((16 - TIMECOMPARE_NEW_SKEW_PER_16) *
					sync->skew +
					TIMECOMPARE_NEW_SKEW_PER_16 * skew,
					16);
			sync->last_update = average_time;
			sync->offset = offset;
		}
	}
}