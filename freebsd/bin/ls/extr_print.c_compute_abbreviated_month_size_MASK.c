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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t month_max_size ; 
 size_t* padding_for_month ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i;
	size_t width;
	size_t months_width[12];

	for (i = 0; i < 12; i++) {
		width = FUNC1(FUNC0(i));
		if (width == (size_t)-1) {
			month_max_size = -1;
			return;
		}
		months_width[i] = width;
		if (width > month_max_size)
			month_max_size = width;
	}

	for (i = 0; i < 12; i++)
		padding_for_month[i] = month_max_size - months_width[i];
}