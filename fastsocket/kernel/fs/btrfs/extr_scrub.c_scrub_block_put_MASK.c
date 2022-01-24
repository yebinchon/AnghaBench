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
struct scrub_block {int page_count; TYPE_1__* pagev; int /*<<< orphan*/  ref_count; } ;
struct TYPE_2__ {scalar_t__ page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct scrub_block*) ; 

__attribute__((used)) static void FUNC3(struct scrub_block *sblock)
{
	if (FUNC1(&sblock->ref_count)) {
		int i;

		for (i = 0; i < sblock->page_count; i++)
			if (sblock->pagev[i].page)
				FUNC0(sblock->pagev[i].page);
		FUNC2(sblock);
	}
}