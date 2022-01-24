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
struct sonicvibes {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct sonicvibes * sonic,
                                  unsigned char reg,
                                  unsigned int rate)
{
	unsigned long flags;
	unsigned int r, m, n;

	FUNC1(rate, &r, &m, &n);
	if (sonic != NULL) {
		FUNC2(&sonic->reg_lock, flags);
		FUNC0(sonic, reg, m);
		FUNC0(sonic, reg + 1, r | n);
		FUNC3(&sonic->reg_lock, flags);
	}
}