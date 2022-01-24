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
typedef  int /*<<< orphan*/ * PSTRING ;
typedef  scalar_t__ INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

PSTRING FUNC2(PSTRING s1,const PSTRING s2)
{
	INT l1, l2;

	l2 = FUNC1(s2);
	if (!l2)
		return s1;

	l1 = FUNC1(s1);

	while (l1 >= l2)
	{
		l1--;
		if (!FUNC0(s1,s2,l2))
			return s1;
		s1++;
	}

	return NULL;
}