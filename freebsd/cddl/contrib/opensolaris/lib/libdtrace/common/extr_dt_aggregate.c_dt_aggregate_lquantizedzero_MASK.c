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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t
FUNC3(int64_t *lquanta)
{
	int64_t arg = *lquanta++;
	int32_t base = FUNC0(arg);
	uint16_t step = FUNC2(arg);
	uint16_t levels = FUNC1(arg), i;

	if (base - 1 == 0)
		return (lquanta[0]);

	for (i = 0; i < levels; base += step, i++) {
		if (base != 0)
			continue;

		return (lquanta[i + 1]);
	}

	if (base + 1 == 0)
		return (lquanta[levels + 1]);

	return (0);
}