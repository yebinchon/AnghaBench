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
#define  CCANmode 141 
#define  CCAPmode 140 
 int CCAmode ; 
#define  CCL1mode 139 
#define  CCL2mode 138 
#define  CCL3mode 137 
#define  CCLmode 136 
#define  CCSRmode 135 
#define  CCSmode 134 
#define  CCT1mode 133 
#define  CCT2mode 132 
#define  CCT3mode 131 
 int CCTmode ; 
#define  CCURmode 130 
#define  CCUmode 129 
#define  CCZmode 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static bool
FUNC8 (rtx set, enum machine_mode req_mode)
{
  enum machine_mode set_mode;

  FUNC6 (FUNC1 (set) == SET);

  if (FUNC1 (FUNC4 (set)) != REG || !FUNC0 (FUNC3 (FUNC4 (set))))
    return 1;

  set_mode = FUNC2 (FUNC4 (set));
  switch (set_mode)
    {
    case CCSmode:
    case CCSRmode:
    case CCUmode:
    case CCURmode:
    case CCLmode:
    case CCL1mode:
    case CCL2mode:
    case CCL3mode:
    case CCT1mode:
    case CCT2mode:
    case CCT3mode:
      if (req_mode != set_mode)
        return 0;
      break;

    case CCZmode:
      if (req_mode != CCSmode && req_mode != CCUmode && req_mode != CCTmode
	  && req_mode != CCSRmode && req_mode != CCURmode)
        return 0;
      break;

    case CCAPmode:
    case CCANmode:
      if (req_mode != CCAmode)
        return 0;
      break;

    default:
      FUNC7 ();
    }

  return (FUNC2 (FUNC5 (set)) == set_mode);
}