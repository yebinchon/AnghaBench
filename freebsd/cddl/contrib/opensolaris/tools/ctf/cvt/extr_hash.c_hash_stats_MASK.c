#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int h_nbuckets; int /*<<< orphan*/ * h_buckets; } ;
typedef  TYPE_1__ hash_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(hash_t *hash, int verbose)
{
	int min = FUNC0(hash->h_buckets[0]);
	int minidx = 0;
	int max = min;
	int maxidx = 0;
	int tot = min;
	int count;
	int i;

	if (min && verbose)
		FUNC1("%3d: %d\n", 0, min);
	for (i = 1; i < hash->h_nbuckets; i++) {
		count = FUNC0(hash->h_buckets[i]);
		if (min > count) {
			min = count;
			minidx = i;
		}
		if (max < count) {
			max = count;
			maxidx = i;
		}
		if (count && verbose)
			FUNC1("%3d: %d\n", i, count);
		tot += count;
	}

	FUNC1("Hash statistics:\n");
	FUNC1(" Buckets: %d\n", hash->h_nbuckets);
	FUNC1(" Items  : %d\n", tot);
	FUNC1(" Min/Max: %d in #%d, %d in #%d\n", min, minidx, max, maxidx);
	FUNC1(" Average: %5.2f\n", (float)tot / (float)hash->h_nbuckets);
}