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
struct TYPE_2__ {scalar_t__ has_children; } ;
struct hist_entry {int nr_rows; int /*<<< orphan*/  sorted_chain; TYPE_1__ ms; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hist_entry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC3(struct hist_entry *he, bool unfold)
{
	FUNC1(he);
	FUNC2(&he->ms, unfold);

	if (he->ms.has_children) {
		int n = FUNC0(&he->sorted_chain, unfold);
		he->nr_rows = unfold ? n : 0;
	} else
		he->nr_rows = 0;
}