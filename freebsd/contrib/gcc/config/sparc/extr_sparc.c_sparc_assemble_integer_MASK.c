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
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_V9 ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static bool
FUNC4 (rtx x, unsigned int size, int aligned_p)
{
  /* ??? We only output .xword's for symbols and only then in environments
     where the assembler can handle them.  */
  if (aligned_p && size == 8
      && (FUNC0 (x) != CONST_INT && FUNC0 (x) != CONST_DOUBLE))
    {
      if (TARGET_V9)
	{
	  FUNC2 ("\t.xword\t", x);
	  return true;
	}
      else
	{
	  FUNC1 (4, const0_rtx);
	  FUNC1 (4, x);
	  return true;
	}
    }
  return FUNC3 (x, size, aligned_p);
}