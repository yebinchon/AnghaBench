#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * page2; int /*<<< orphan*/ * page1; int /*<<< orphan*/ * page0; } ;
typedef  TYPE_1__ lithium_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(lithium_t *lith)
{
	if (lith->page0) {
		FUNC0(lith->page0);
		lith->page0 = NULL;
	}
	if (lith->page1) {
		FUNC0(lith->page1);
		lith->page1 = NULL;
	}
	if (lith->page2) {
		FUNC0(lith->page2);
		lith->page2 = NULL;
	}
}