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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

bool
FUNC5 (rtx op)
{
  if (!FUNC1 (op))
    return false;

  /* First mimic offsettable_memref_p.  */
  if (FUNC3 (1, FUNC0 (op), FUNC2 (op, 0)))
    return true;

  /* offsettable_address_p invokes rs6000_mode_dependent_address, but
     the latter predicate knows nothing about the mode of the memory
     reference and, therefore, assumes that it is the largest supported
     mode (TFmode).  As a consequence, legitimate offsettable memory
     references are rejected.  rs6000_legitimate_offset_address_p contains
     the correct logic for the PLUS case of rs6000_mode_dependent_address.  */
  return FUNC4 (FUNC0 (op), FUNC2 (op, 0), 1);
}