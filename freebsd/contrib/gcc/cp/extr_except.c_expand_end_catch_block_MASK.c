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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ in_function_try_handler ; 

void
FUNC5 (void)
{
  if (! FUNC3 (1))
    return;

  /* The exception being handled is rethrown if control reaches the end of
     a handler of the function-try-block of a constructor or destructor.  */
  if (in_function_try_handler
      && (FUNC0 (current_function_decl)
	  || FUNC1 (current_function_decl)))
    FUNC4 (FUNC2 (NULL_TREE));
}