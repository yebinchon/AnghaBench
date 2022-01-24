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
#define  AND 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  IOR 131 
#define  MINUS 130 
#define  PLUS 129 
#define  XOR 128 
 int /*<<< orphan*/  FUNC1 () ; 

const char *
FUNC2 (rtx op, int shift_first_arg)
{
  switch (FUNC0 (op))
    {
    case PLUS:
      return "add";

    case MINUS:
      return shift_first_arg ? "rsb" : "sub";

    case IOR:
      return "orr";

    case XOR:
      return "eor";

    case AND:
      return "and";

    default:
      FUNC1 ();
    }
}