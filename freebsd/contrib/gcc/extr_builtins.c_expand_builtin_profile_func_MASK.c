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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  BUILT_IN_RETURN_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCT_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  profile_function_entry_libfunc ; 
 int /*<<< orphan*/  profile_function_exit_libfunc ; 

__attribute__((used)) static rtx
FUNC6 (bool exitp)
{
  rtx this, which;

  this = FUNC0 (current_function_decl);
  FUNC5 (FUNC1 (this));
  this = FUNC2 (this, 0);

  if (exitp)
    which = profile_function_exit_libfunc;
  else
    which = profile_function_entry_libfunc;

  FUNC3 (which, LCT_NORMAL, VOIDmode, 2, this, Pmode,
		     FUNC4 (BUILT_IN_RETURN_ADDRESS,
						 0),
		     Pmode);

  return const0_rtx;
}