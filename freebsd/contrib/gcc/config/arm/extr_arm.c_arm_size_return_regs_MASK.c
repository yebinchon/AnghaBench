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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  current_function_decl ; 
 scalar_t__ current_function_return_rtx ; 

__attribute__((used)) static int
FUNC4 (void)
{
  enum machine_mode mode;

  if (current_function_return_rtx != 0)
    mode = FUNC2 (current_function_return_rtx);
  else
    mode = FUNC0 (FUNC1 (current_function_decl));

  return FUNC3 (mode);
}