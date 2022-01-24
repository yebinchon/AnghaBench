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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

rtx
FUNC5 (rtx insn)
{
  rtx x;
  bool purge = false;

  if (FUNC2 (insn)
      && FUNC1 (insn)
      && FUNC0 (FUNC1 (insn)) == insn)
    purge = true;
  x = FUNC3 (insn);
  if (purge)
    FUNC4 (FUNC1 (insn));
  return x;
}