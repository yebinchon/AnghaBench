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
struct ftrace_event_field {int dummy; } ;

/* Variables and functions */
 int OP_EQ ; 
 int OP_GLOB ; 
 int OP_NE ; 
 scalar_t__ FUNC0 (struct ftrace_event_field*) ; 

__attribute__((used)) static int FUNC1(struct ftrace_event_field *field, int op)
{
	if (FUNC0(field) &&
	    (op != OP_EQ && op != OP_NE && op != OP_GLOB))
		return 0;
	if (!FUNC0(field) && op == OP_GLOB)
		return 0;

	return 1;
}