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
struct perf_evsel {struct perf_evsel* name; scalar_t__ tp_format; struct perf_evsel* group_name; int /*<<< orphan*/  cgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void FUNC4(struct perf_evsel *evsel)
{
	FUNC2(evsel);
	FUNC0(evsel->cgrp);
	FUNC1(evsel->group_name);
	if (evsel->tp_format)
		FUNC3(evsel->tp_format);
	FUNC1(evsel->name);
	FUNC1(evsel);
}