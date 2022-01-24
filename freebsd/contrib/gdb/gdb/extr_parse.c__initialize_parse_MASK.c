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
typedef  union type_stack_elt {int dummy; } type_stack_elt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  class_maintenance ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  expressiondebug ; 
 int /*<<< orphan*/  msym_data_symbol_type ; 
 int /*<<< orphan*/  msym_text_symbol_type ; 
 int /*<<< orphan*/  msym_unknown_symbol_type ; 
 int /*<<< orphan*/  setdebuglist ; 
 int /*<<< orphan*/  showdebuglist ; 
 union type_stack_elt* type_stack ; 
 scalar_t__ type_stack_depth ; 
 int type_stack_size ; 
 int /*<<< orphan*/  var_zinteger ; 
 scalar_t__ FUNC5 (int) ; 

void
FUNC6 (void)
{
  type_stack_size = 80;
  type_stack_depth = 0;
  type_stack = (union type_stack_elt *)
    FUNC5 (type_stack_size * sizeof (*type_stack));

  FUNC3 ();

  /* FIXME - For the moment, handle types by swapping them in and out.
     Should be using the per-architecture data-pointer and a large
     struct. */
  FUNC0 (msym_text_symbol_type);
  FUNC0 (msym_data_symbol_type);
  FUNC0 (msym_unknown_symbol_type);
  FUNC4 (NULL, 0, build_parse);

  FUNC2 (
	    FUNC1 ("expression", class_maintenance, var_zinteger,
			 (char *) &expressiondebug,
			 "Set expression debugging.\n\
When non-zero, the internal representation of expressions will be printed.",
			 &setdebuglist),
		      &showdebuglist);
}