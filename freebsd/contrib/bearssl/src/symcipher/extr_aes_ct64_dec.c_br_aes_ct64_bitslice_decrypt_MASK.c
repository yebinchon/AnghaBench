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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(unsigned num_rounds,
	const uint64_t *skey, uint64_t *q)
{
	unsigned u;

	FUNC0(q, skey + (num_rounds << 3));
	for (u = num_rounds - 1; u > 0; u --) {
		FUNC3(q);
		FUNC1(q);
		FUNC0(q, skey + (u << 3));
		FUNC2(q);
	}
	FUNC3(q);
	FUNC1(q);
	FUNC0(q, skey);
}