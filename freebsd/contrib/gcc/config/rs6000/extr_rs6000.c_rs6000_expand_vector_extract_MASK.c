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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  UNSPEC_STVE ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC11 (rtx target, rtx vec, int elt)
{
  enum machine_mode mode = FUNC0 (vec);
  enum machine_mode inner_mode = FUNC1 (mode);
  rtx mem, x;

  /* Allocate mode-sized buffer.  */
  mem = FUNC4 (mode, FUNC2 (mode), 0);

  /* Add offset to field within buffer matching vector element.  */
  mem = FUNC3 (mem, mode, elt * FUNC2 (inner_mode));

  /* Store single field into mode-sized buffer.  */
  x = FUNC10 (VOIDmode,
		      FUNC7 (1, const0_rtx), UNSPEC_STVE);
  FUNC5 (FUNC8 (VOIDmode,
			       FUNC7 (2,
					  FUNC9 (VOIDmode,
						       mem, vec),
					  x)));
  FUNC6 (target, FUNC3 (mem, inner_mode, 0));
}