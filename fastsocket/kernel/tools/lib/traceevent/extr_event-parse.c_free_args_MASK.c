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
struct print_arg {struct print_arg* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct print_arg*) ; 

__attribute__((used)) static void FUNC1(struct print_arg *args)
{
	struct print_arg *next;

	while (args) {
		next = args->next;

		FUNC0(args);
		args = next;
	}
}