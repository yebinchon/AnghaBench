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
struct print_flag_sym {struct print_flag_sym* next; int /*<<< orphan*/  str; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct print_flag_sym *field,
				   const char *ev_name,
				   const char *field_name)
{
	FUNC0(ev_name, field_name, field->value, field->str);
	if (field->next)
		FUNC1(field->next, ev_name, field_name);
}