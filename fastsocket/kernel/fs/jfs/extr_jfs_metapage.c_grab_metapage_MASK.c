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
struct metapage {int /*<<< orphan*/  page; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct metapage*) ; 
 int /*<<< orphan*/  FUNC1 (struct metapage*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct metapage * mp)
{
	FUNC0("grab_metapage: mp = 0x%p", mp);
	FUNC3(mp->page);
	FUNC2(mp->page);
	mp->count++;
	FUNC1(mp);
	FUNC4(mp->page);
}