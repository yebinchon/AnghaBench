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
struct perf_hpp {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;
struct hist_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ field_sep; } ;

/* Variables and functions */
 double FUNC0 (struct hist_entry*) ; 
 scalar_t__ FUNC1 (struct hist_entry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 TYPE_1__ symbol_conf ; 

__attribute__((used)) static int FUNC3(struct perf_hpp *hpp, struct hist_entry *he)
{
	double percent = FUNC0(he);
	const char *fmt = symbol_conf.field_sep ? "%.2f" : " %6.2f%%";

	if (FUNC1(he) || symbol_conf.field_sep)
		return FUNC2(hpp->buf, hpp->size, fmt, percent);
	else
		return FUNC2(hpp->buf, hpp->size, "            ");
}