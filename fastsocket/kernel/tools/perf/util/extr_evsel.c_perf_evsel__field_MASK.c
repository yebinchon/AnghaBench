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
struct perf_evsel {int /*<<< orphan*/  tp_format; } ;
struct format_field {int dummy; } ;

/* Variables and functions */
 struct format_field* FUNC0 (int /*<<< orphan*/ ,char const*) ; 

struct format_field *FUNC1(struct perf_evsel *evsel, const char *name)
{
	return FUNC0(evsel->tp_format, name);
}