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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PLUS ; 
 scalar_t__ REG ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

bool
FUNC4 (rtx op, rtx *base, HOST_WIDE_INT *offset)
{
  HOST_WIDE_INT off = 0;

  /* We can have an integer constant, an address register,
     or a sum of the two.  */
  if (FUNC0 (op) == CONST_INT)
    {
      off = FUNC1 (op);
      op = NULL_RTX;
    }
  if (op && FUNC0 (op) == PLUS && FUNC0 (FUNC3 (op, 1)) == CONST_INT)
    {
      off = FUNC1 (FUNC3 (op, 1));
      op = FUNC3 (op, 0);
    }
  while (op && FUNC0 (op) == SUBREG)
    op = FUNC2 (op);

  if (op && FUNC0 (op) != REG)
    return false;

  if (offset)
    *offset = off;
  if (base)
    *base = op;

   return true;
}