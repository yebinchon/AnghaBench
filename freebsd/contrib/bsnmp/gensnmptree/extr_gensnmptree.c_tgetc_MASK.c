#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fp; } ;

/* Variables and functions */
 int EOF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* input ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int pbchar ; 

__attribute__((used)) static int
FUNC2(void)
{
	int c;

	if (pbchar != -1) {
		c = pbchar;
		pbchar = -1;
		return (c);
	}

	for (;;) {
		if (input == NULL)
			return (EOF);

		if ((c = FUNC0(input->fp)) != EOF)
			return (c);

		FUNC1();
	}
}