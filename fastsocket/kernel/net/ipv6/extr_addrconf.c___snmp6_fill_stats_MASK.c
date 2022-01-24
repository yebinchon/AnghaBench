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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int FUNC3 (void**,int) ; 

__attribute__((used)) static inline void FUNC4(u64 *stats, void **mib, int items,
				      int bytes)
{
	int i;
	int pad = bytes - sizeof(u64) * items;
	FUNC0(pad < 0);

	/* Use put_unaligned() because stats may not be aligned for u64. */
	FUNC2(items, &stats[0]);
	for (i = 1; i < items; i++)
		FUNC2(FUNC3(mib, i), &stats[i]);

	FUNC1(&stats[items], 0, pad);
}