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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int CCT1mode ; 
 int CCT2mode ; 
 int CCT3mode ; 
 int CCTmode ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int FUNC2 (int) ; 

enum machine_mode
FUNC3 (rtx op1, rtx op2, bool mixed)
{
  int bit0, bit1;

  /* ??? Fixme: should work on CONST_DOUBLE as well.  */
  if (FUNC0 (op1) != CONST_INT || FUNC0 (op2) != CONST_INT)
    return VOIDmode;

  /* Selected bits all zero: CC0.
     e.g.: int a; if ((a & (16 + 128)) == 0) */
  if (FUNC1 (op2) == 0)
    return CCTmode;

  /* Selected bits all one: CC3. 
     e.g.: int a; if ((a & (16 + 128)) == 16 + 128) */
  if (FUNC1 (op2) == FUNC1 (op1))
    return CCT3mode;

  /* Exactly two bits selected, mixed zeroes and ones: CC1 or CC2. e.g.:
     int a;
     if ((a & (16 + 128)) == 16)         -> CCT1
     if ((a & (16 + 128)) == 128)        -> CCT2  */
  if (mixed)
    {
      bit1 = FUNC2 (FUNC1 (op2));
      bit0 = FUNC2 (FUNC1 (op1) ^ FUNC1 (op2));
      if (bit0 != -1 && bit1 != -1)
        return bit0 > bit1 ? CCT1mode : CCT2mode;
    }

  return VOIDmode;
}