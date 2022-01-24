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
struct trace_array_cpu {int /*<<< orphan*/  disabled; } ;
struct trace_array {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*,unsigned long,unsigned long,unsigned long,int) ; 

void
FUNC3(struct trace_array *tr, struct trace_array_cpu *data,
       unsigned long ip, unsigned long parent_ip, unsigned long flags,
       int pc)
{
	if (FUNC1(!FUNC0(&data->disabled)))
		FUNC2(tr, ip, parent_ip, flags, pc);
}