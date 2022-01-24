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
struct metapage {int /*<<< orphan*/  page; scalar_t__ count; scalar_t__ nohomeok; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct metapage *mp)
{
	if (mp->count || mp->nohomeok) {
		/* Someone else will release this */
		FUNC3(mp->page);
		return;
	}
	FUNC1(mp->page);
	mp->count++;
	FUNC0(mp);
	FUNC3(mp->page);
	FUNC2(mp);
}