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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
#define  AND 132 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  IOR 131 
#define  MINUS 130 
#define  PLUS 129 
#define  XOR 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int
FUNC3 (HOST_WIDE_INT i, enum rtx_code code)
{
  if (FUNC1 (i))
    return 1;

  switch (code)
    {
    case PLUS:
      return FUNC1 (FUNC0 (-i));

    case MINUS:		/* Should only occur with (MINUS I reg) => rsb */
    case XOR:
    case IOR:
      return 0;

    case AND:
      return FUNC1 (FUNC0 (~i));

    default:
      FUNC2 ();
    }
}