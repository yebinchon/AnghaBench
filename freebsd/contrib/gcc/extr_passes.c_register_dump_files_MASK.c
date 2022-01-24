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
struct tree_opt_pass {int properties_required; int /*<<< orphan*/  todo_flags_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  TODO_set_props ; 
 int /*<<< orphan*/  FUNC0 (struct tree_opt_pass*,int,int) ; 

__attribute__((used)) static void 
FUNC1 (struct tree_opt_pass *pass, bool ipa, int properties)
{
  pass->properties_required |= properties;
  pass->todo_flags_start |= TODO_set_props;
  FUNC0 (pass, ipa, properties);
}