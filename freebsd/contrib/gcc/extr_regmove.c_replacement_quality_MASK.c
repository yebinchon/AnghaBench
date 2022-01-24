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
 int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int* regno_src_regno ; 

__attribute__((used)) static int
FUNC3 (rtx reg)
{
  int src_regno;

  /* Bad if this isn't a register at all.  */
  if (!FUNC2 (reg))
    return 0;

  /* If this register is not meant to get a hard register,
     it is a poor choice.  */
  if (FUNC1 (FUNC0 (reg)) < 0)
    return 0;

  src_regno = regno_src_regno[FUNC0 (reg)];

  /* If it was not copied from another register, it is fine.  */
  if (src_regno < 0)
    return 3;

  /* Copied from a hard register?  */
  if (src_regno < FIRST_PSEUDO_REGISTER)
    return 1;

  /* Copied from a pseudo register - not as bad as from a hard register,
     yet still cumbersome, since the register live length will be lengthened
     when the registers get tied.  */
  return 2;
}