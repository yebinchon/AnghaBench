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
typedef  scalar_t__ tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC7 (void)
{
  tree decl;
  for (decl = FUNC0 (current_function_decl);
       decl; decl = FUNC4 (decl))
    if (FUNC1 (decl) != 0
	&& FUNC3 (FUNC1 (decl))
	&& FUNC5 (FUNC2 (FUNC1 (decl))))
      FUNC6 (0, "argument %q+D might be clobbered by %<longjmp%> or %<vfork%>",
	       decl);
}