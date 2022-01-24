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
typedef  int /*<<< orphan*/ * rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ REG_EQUAL ; 
 scalar_t__ REG_EQUIV ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

rtx
FUNC5 (rtx insn)
{
  rtx link;

  if (!FUNC0 (insn))
    return 0;
  for (link = FUNC1 (insn); link; link = FUNC3 (link, 1))
    if (FUNC2 (link) == REG_EQUAL
	|| FUNC2 (link) == REG_EQUIV)
      {
	if (FUNC4 (insn) == 0)
	  return 0;
	return link;
      }
  return NULL;
}