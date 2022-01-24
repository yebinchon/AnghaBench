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
struct trace_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRACE_ITER_LATENCY_FMT ; 
 int /*<<< orphan*/  save_lat_flag ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int /*<<< orphan*/  trace_flags ; 

__attribute__((used)) static void FUNC1(struct trace_array *tr)
{
	FUNC0(tr);

	if (!save_lat_flag)
		trace_flags &= ~TRACE_ITER_LATENCY_FMT;
}