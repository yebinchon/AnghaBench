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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGEVEC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page**,int,int /*<<< orphan*/ ) ; 

void FUNC4(struct page **pages, int nr)
{
	struct page **pagep = pages;

	FUNC1();
	while (nr) {
		int todo = FUNC2(nr, PAGEVEC_SIZE);
		int i;

		for (i = 0; i < todo; i++)
			FUNC0(pagep[i]);
		FUNC3(pagep, todo, 0);
		pagep += todo;
		nr -= todo;
	}
}