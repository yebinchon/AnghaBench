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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNSPEC ; 
#define  UNSPEC_DEF_CFA 129 
#define  UNSPEC_REG_SAVE 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10 (const char *label, rtx pattern, int index)
{
  rtx unspec = FUNC4 (pattern);
  FUNC8 (FUNC0 (unspec) == UNSPEC);

  switch (index)
    {
    case UNSPEC_REG_SAVE:
      FUNC7 (label, FUNC5 (unspec, 0, 0),
			      FUNC3 (pattern));
      break;
    case UNSPEC_DEF_CFA:
      FUNC6 (label, FUNC2 (FUNC3 (pattern)),
			 FUNC1 (FUNC5 (unspec, 0, 0)));
      break;
    default:
      FUNC9 ();
    }
}