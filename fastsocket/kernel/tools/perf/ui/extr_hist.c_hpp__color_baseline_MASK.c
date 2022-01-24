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
struct perf_hpp {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;
struct hist_entry {int dummy; } ;

/* Variables and functions */
 double FUNC0 (struct hist_entry*) ; 
 scalar_t__ FUNC1 (struct hist_entry*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,double) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct perf_hpp *hpp, struct hist_entry *he)
{
	double percent = FUNC0(he);

	if (FUNC1(he))
		return FUNC2(hpp->buf, hpp->size, " %6.2f%%", percent);
	else
		return FUNC3(hpp->buf, hpp->size, "        ");
}