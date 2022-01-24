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
struct TYPE_3__ {double period_ratio_delta; scalar_t__ computed; } ;
struct hist_entry {TYPE_1__ diff; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {scalar_t__ field_sep; } ;

/* Variables and functions */
 double FUNC0 (double) ; 
 double FUNC1 (struct hist_entry*) ; 
 int FUNC2 (char*,int,char const*,...) ; 
 TYPE_2__ symbol_conf ; 

__attribute__((used)) static int FUNC3(struct perf_hpp *hpp, struct hist_entry *he)
{
	const char *fmt = symbol_conf.field_sep ? "%s" : "%7.7s";
	char buf[32] = " ";
	double diff;

	if (he->diff.computed)
		diff = he->diff.period_ratio_delta;
	else
		diff = FUNC1(he);

	if (FUNC0(diff) >= 0.01)
		FUNC2(buf, sizeof(buf), "%+4.2F%%", diff);

	return FUNC2(hpp->buf, hpp->size, fmt, buf);
}