#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* promote_function_return ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,int*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void
FUNC13 (rtx val)
{
  /* Copy the value to the return location
     unless it's already there.  */

  rtx return_reg = FUNC2 (FUNC1 (current_function_decl));
  if (return_reg != val)
    {
      tree type = FUNC4 (FUNC1 (current_function_decl));
      if (targetm.calls.promote_function_return (FUNC4 (current_function_decl)))
      {
	int unsignedp = FUNC5 (type);
	enum machine_mode old_mode
	  = FUNC0 (FUNC1 (current_function_decl));
	enum machine_mode mode
	  = FUNC11 (type, old_mode, &unsignedp, 1);

	if (mode != old_mode)
	  val = FUNC6 (mode, old_mode, val, unsignedp);
      }
      if (FUNC3 (return_reg) == PARALLEL)
	FUNC7 (return_reg, val, type, FUNC10 (type));
      else
	FUNC8 (return_reg, val);
    }

  FUNC9 ();
}