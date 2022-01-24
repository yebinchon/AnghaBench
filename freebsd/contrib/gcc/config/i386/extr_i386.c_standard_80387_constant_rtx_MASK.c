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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XFmode ; 
 int /*<<< orphan*/  ext_80387_constants_init ; 
 int /*<<< orphan*/ * ext_80387_constants_table ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

rtx
FUNC3 (int idx)
{
  int i;

  if (! ext_80387_constants_init)
    FUNC2 ();

  switch (idx)
    {
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
      i = idx - 3;
      break;

    default:
      FUNC1 ();
    }

  return FUNC0 (ext_80387_constants_table[i],
				       XFmode);
}