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
#define  CCGCmode 132 
#define  CCGOCmode 131 
#define  CCNOmode 130 
#define  CCZmode 129 
#define  CCmode 128 
 scalar_t__ COMPARE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9 (rtx insn, enum machine_mode req_mode)
{
  rtx set;
  enum machine_mode set_mode;

  set = FUNC2 (insn);
  if (FUNC0 (set) == PARALLEL)
    set = FUNC6 (set, 0, 0);
  FUNC7 (FUNC0 (set) == SET);
  FUNC7 (FUNC0 (FUNC4 (set)) == COMPARE);

  set_mode = FUNC1 (FUNC3 (set));
  switch (set_mode)
    {
    case CCNOmode:
      if (req_mode != CCNOmode
	  && (req_mode != CCmode
	      || FUNC5 (FUNC4 (set), 1) != const0_rtx))
	return 0;
      break;
    case CCmode:
      if (req_mode == CCGCmode)
	return 0;
      /* FALLTHRU */
    case CCGCmode:
      if (req_mode == CCGOCmode || req_mode == CCNOmode)
	return 0;
      /* FALLTHRU */
    case CCGOCmode:
      if (req_mode == CCZmode)
	return 0;
      /* FALLTHRU */
    case CCZmode:
      break;

    default:
      FUNC8 ();
    }

  return (FUNC1 (FUNC4 (set)) == set_mode);
}