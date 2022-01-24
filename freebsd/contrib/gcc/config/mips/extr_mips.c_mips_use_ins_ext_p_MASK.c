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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ BITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISA_HAS_EXT_INS ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC4 (rtx op, rtx size, rtx position)
{
  HOST_WIDE_INT len, pos;

  if (!ISA_HAS_EXT_INS
      || !FUNC3 (op, VOIDmode)
      || FUNC1 (FUNC0 (op)) > BITS_PER_WORD)
    return false;

  len = FUNC2 (size);
  pos = FUNC2 (position);
  
  if (len <= 0 || len >= FUNC1 (FUNC0 (op)) 
      || pos < 0 || pos + len > FUNC1 (FUNC0 (op)))
    return false;

  return true;
}