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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,int,int /*<<< orphan*/ ) ; 

const char *
FUNC3 (rtx *operands)
{
  HOST_WIDE_INT n = FUNC0 (operands[2]);

  if (n != 0 || FUNC1 (operands[0]) != FUNC1 (operands[1]))
    {
      if (n < 0)
	FUNC2 (operands,
				"sub%?\t%0, %1, %2", "sub%?\t%0, %0, %2", 2,
				-n);
      else
	FUNC2 (operands,
				"add%?\t%0, %1, %2", "add%?\t%0, %0, %2", 2,
				n);
    }

  return "";
}