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
struct pevent_function_handler {struct pevent_function_handler* next; struct pevent_function_handler* params; struct pevent_function_handler* name; } ;
struct pevent_func_params {struct pevent_func_params* next; struct pevent_func_params* params; struct pevent_func_params* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pevent_function_handler*) ; 

__attribute__((used)) static void FUNC1(struct pevent_function_handler *func)
{
	struct pevent_func_params *params;

	FUNC0(func->name);

	while (func->params) {
		params = func->params;
		func->params = params->next;
		FUNC0(params);
	}

	FUNC0(func);
}