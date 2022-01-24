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
struct hists {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hists*) ; 
 int /*<<< orphan*/  FUNC1 (struct hists*) ; 
 int /*<<< orphan*/  FUNC2 (struct hists*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hists*,struct hists*) ; 
 int /*<<< orphan*/  FUNC4 (struct hists*,struct hists*) ; 
 int /*<<< orphan*/  FUNC5 (struct hists*) ; 
 scalar_t__ show_baseline_only ; 
 scalar_t__ sort_compute ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void FUNC6(struct hists *old, struct hists *new)
{
	FUNC4(new, old);

	if (show_baseline_only)
		FUNC0(new);
	else
		FUNC3(new, old);

	if (sort_compute) {
		FUNC5(new);
		FUNC1(new);
	}

	FUNC2(new, true, 0, 0, stdout);
}