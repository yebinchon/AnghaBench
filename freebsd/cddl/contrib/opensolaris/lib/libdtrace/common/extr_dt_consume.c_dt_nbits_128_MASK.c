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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC2(uint64_t *a)
{
	int nbits = 0;
	uint64_t tmp[2];
	uint64_t zero[2] = { 0, 0 };

	tmp[0] = a[0];
	tmp[1] = a[1];

	FUNC1(tmp, -1);
	while (FUNC0(tmp, zero)) {
		FUNC1(tmp, -1);
		nbits++;
	}

	return (nbits);
}