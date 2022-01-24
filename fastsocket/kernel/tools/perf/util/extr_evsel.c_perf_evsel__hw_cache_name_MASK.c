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
struct TYPE_2__ {int /*<<< orphan*/  config; } ;
struct perf_evsel {TYPE_1__ attr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int FUNC1 (struct perf_evsel*,char*,size_t) ; 

__attribute__((used)) static int FUNC2(struct perf_evsel *evsel, char *bf, size_t size)
{
	int ret = FUNC0(evsel->attr.config, bf, size);
	return ret + FUNC1(evsel, bf + ret, size - ret);
}