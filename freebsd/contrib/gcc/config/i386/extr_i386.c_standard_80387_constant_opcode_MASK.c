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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

const char *
FUNC2 (rtx x)
{
  switch (FUNC1 (x))
    {
    case 1:
      return "fldz";
    case 2:
      return "fld1";
    case 3:
      return "fldlg2";
    case 4:
      return "fldln2";
    case 5:
      return "fldl2e";
    case 6:
      return "fldl2t";
    case 7:
      return "fldpi";
    default:
      FUNC0 ();
    }
}