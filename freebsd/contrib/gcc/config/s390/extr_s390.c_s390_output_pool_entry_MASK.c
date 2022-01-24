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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  CONST_DOUBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  MODE_DECIMAL_FLOAT 130 
#define  MODE_FLOAT 129 
#define  MODE_INT 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void
FUNC8 (rtx exp, enum machine_mode mode, unsigned int align)
{
  REAL_VALUE_TYPE r;

  switch (FUNC1 (mode))
    {
    case MODE_FLOAT:
    case MODE_DECIMAL_FLOAT:
      FUNC6 (FUNC0 (exp) == CONST_DOUBLE);

      FUNC3 (r, exp);
      FUNC5 (r, mode, align);
      break;

    case MODE_INT:
      FUNC4 (exp, FUNC2 (mode), align, 1);
      break;

    default:
      FUNC7 ();
    }
}