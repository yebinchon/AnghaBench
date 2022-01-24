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
struct cp_switch {struct cp_switch* next; int /*<<< orphan*/  cases; int /*<<< orphan*/  switch_stmt; } ;
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cp_switch*) ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  processing_template_decl ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct cp_switch* switch_stack ; 

void
FUNC7 (void)
{
  struct cp_switch *cs = switch_stack;
  location_t switch_location;

  /* Emit warnings as needed.  */
  if (FUNC0 (cs->switch_stmt))
    switch_location = FUNC1 (cs->switch_stmt);
  else
    switch_location = input_location;
  if (!processing_template_decl)
    FUNC4 (cs->cases, switch_location,
			  FUNC3 (cs->switch_stmt),
			  FUNC2 (cs->switch_stmt));

  FUNC6 (cs->cases);
  switch_stack = switch_stack->next;
  FUNC5 (cs);
}