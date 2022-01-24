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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

void
FUNC5(unsigned num_rounds,
	const uint32_t *sk_exp, void *block)
{
	unsigned char *buf;
	uint32_t l, r;

	buf = block;
	l = FUNC0(buf);
	r = FUNC0(buf + 4);
	FUNC1(&l, &r);
	while (num_rounds -- > 0) {
		FUNC4(&l, &r, sk_exp);
		sk_exp += 96;
	}
	FUNC2(&l, &r);
	FUNC3(buf, l);
	FUNC3(buf + 4, r);
}