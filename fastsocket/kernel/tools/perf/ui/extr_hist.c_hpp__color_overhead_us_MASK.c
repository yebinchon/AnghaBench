#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct perf_hpp {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;
struct TYPE_4__ {double total_period; } ;
struct hists {TYPE_2__ stats; } ;
struct TYPE_3__ {double period_us; } ;
struct hist_entry {TYPE_1__ stat; struct hists* hists; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,double) ; 

__attribute__((used)) static int FUNC1(struct perf_hpp *hpp, struct hist_entry *he)
{
	struct hists *hists = he->hists;
	double percent = 100.0 * he->stat.period_us / hists->stats.total_period;

	return FUNC0(hpp->buf, hpp->size, "%6.2f%%", percent);
}