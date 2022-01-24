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
 int OPEN_READ ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  my_dev ; 
 int uart6850_opened ; 
 unsigned char FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	int count = 10;

	while (count)
	{
		/*
		 * Not timed out
		 */
		if (FUNC0())
		{
			unsigned char c = FUNC2();
			count = 100;
			if (uart6850_opened & OPEN_READ)
				FUNC1(my_dev, c);
		}
		else
		{
			while (!FUNC0() && count)
				count--;
		}
	}
}