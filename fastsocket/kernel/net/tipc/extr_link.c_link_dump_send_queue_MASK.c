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
struct link {scalar_t__ first_out; scalar_t__ next_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct link *l_ptr)
{
	if (l_ptr->next_out) {
		FUNC1("\nContents of unsent queue:\n");
		FUNC0(l_ptr->next_out);
	}
	FUNC1("\nContents of send queue:\n");
	if (l_ptr->first_out) {
		FUNC0(l_ptr->first_out);
	}
	FUNC1("Empty send queue\n");
}