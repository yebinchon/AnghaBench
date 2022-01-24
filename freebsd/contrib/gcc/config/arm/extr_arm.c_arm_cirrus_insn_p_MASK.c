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
typedef  enum attr_cirrus { ____Placeholder_attr_cirrus } attr_cirrus ;

/* Variables and functions */
 int CIRRUS_NOT ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INSN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ USE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC3 (rtx insn)
{
  enum attr_cirrus attr;

  /* get_attr cannot accept USE or CLOBBER.  */
  if (!insn
      || FUNC0 (insn) != INSN
      || FUNC0 (FUNC1 (insn)) == USE
      || FUNC0 (FUNC1 (insn)) == CLOBBER)
    return 0;

  attr = FUNC2 (insn);

  return attr != CIRRUS_NOT;
}