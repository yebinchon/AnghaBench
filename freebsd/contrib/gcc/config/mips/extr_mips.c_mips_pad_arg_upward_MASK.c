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
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ABI_EABI ; 
 scalar_t__ ABI_O64 ; 
 int BITS_PER_UNIT ; 
 int BLKmode ; 
 int /*<<< orphan*/  BYTES_BIG_ENDIAN ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ MODE_FLOAT ; 
 scalar_t__ MODE_INT ; 
 int PARM_BOUNDARY ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ mips_abi ; 

bool
FUNC6 (enum machine_mode mode, tree type)
{
  /* On little-endian targets, the first byte of every stack argument
     is passed in the first byte of the stack slot.  */
  if (!BYTES_BIG_ENDIAN)
    return true;

  /* Otherwise, integral types are padded downward: the last byte of a
     stack argument is passed in the last byte of the stack slot.  */
  if (type != 0
      ? FUNC3 (type) || FUNC4 (type)
      : FUNC2 (mode) == MODE_INT)
    return false;

  /* Big-endian o64 pads floating-point arguments downward.  */
  if (mips_abi == ABI_O64)
    if (type != 0 ? FUNC0 (type) : FUNC2 (mode) == MODE_FLOAT)
      return false;

  /* Other types are padded upward for o32, o64, n32 and n64.  */
  if (mips_abi != ABI_EABI)
    return true;

  /* Arguments smaller than a stack slot are padded downward.  */
  if (mode != BLKmode)
    return (FUNC1 (mode) >= PARM_BOUNDARY);
  else
    return (FUNC5 (type) >= (PARM_BOUNDARY / BITS_PER_UNIT));
}