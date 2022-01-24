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
struct arcfb_par {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arcfb_par*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct arcfb_par *par, unsigned int dx,
			unsigned int dy, unsigned int w, unsigned int h)
{
	unsigned int left, right, distance, y;

	/* align the request first */
	y = FUNC2(dy);
	h += dy - y;
	h = FUNC3(h);

	distance = w;
	left = dx;
	right = FUNC4(left + w - 1, FUNC1(left));

	while (distance > 0) {
		FUNC0(par, left, right, y, h);
		distance -= ((right - left) + 1);
		left = right + 1;
		right = FUNC4(left + distance - 1, FUNC1(left));
	}
}