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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  VERIFY_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline unsigned long FUNC4(void *to, const void *from,
					   unsigned long n)
{
	u16 *dst = (u16 *) to;
	u16 *src = (u16 *) from;

	if (!FUNC1(VERIFY_WRITE, to, n))
		return n;

	while (n > 1) {
		u16 v = FUNC3(src);

		if (FUNC0(v, dst))
			return n;

		src++, dst++;
		n -= 2;
	}

	if (n) {
		u8 v = FUNC2(src);

		if (FUNC0(v, ((u8 *) dst)))
			return n;
	}
	return 0;
}