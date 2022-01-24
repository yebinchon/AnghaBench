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
struct trace_seq {int dummy; } ;
struct print_flag_sym {struct print_flag_sym* next; int /*<<< orphan*/  str; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char*) ; 

__attribute__((used)) static void FUNC2(struct trace_seq *s, struct print_flag_sym *field)
{
	FUNC0(s, "{ %s, %s }", field->value, field->str);
	if (field->next) {
		FUNC1(s, ", ");
		FUNC2(s, field->next);
	}
}