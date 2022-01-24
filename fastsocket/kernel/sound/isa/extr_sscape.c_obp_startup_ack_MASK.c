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
struct soundscape {int /*<<< orphan*/  lock; int /*<<< orphan*/  io_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct soundscape *s, unsigned timeout)
{
	unsigned long end_time = jiffies + FUNC2(timeout);

	do {
		unsigned long flags;
		unsigned char x;

		FUNC4(&s->lock, flags);
		x = FUNC1(FUNC0(s->io_base));
		FUNC5(&s->lock, flags);
		if ((x & 0xfe) == 0xfe)
			return 1;

		FUNC3(10);
	} while (FUNC6(jiffies, end_time));

	return 0;
}