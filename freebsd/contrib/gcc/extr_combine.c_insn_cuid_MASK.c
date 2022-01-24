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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ max_uid_cuid ; 

__attribute__((used)) static int
FUNC7 (rtx insn)
{
  while (insn != 0 && FUNC2 (insn) > max_uid_cuid
	 && FUNC4 (insn) && FUNC0 (FUNC5 (insn)) == USE)
    insn = FUNC3 (insn);

  FUNC6 (FUNC2 (insn) <= max_uid_cuid);

  return FUNC1 (insn);
}