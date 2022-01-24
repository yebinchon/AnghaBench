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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_pretty_printer ;

/* Variables and functions */
#define  CONVERT_EXPR 131 
#define  FIX_TRUNC_EXPR 130 
#define  FLOAT_EXPR 129 
#define  NOP_EXPR 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC5 (c_pretty_printer *pp, tree e)
{
  switch (FUNC0 (e))
    {
    case FLOAT_EXPR:
    case FIX_TRUNC_EXPR:
    case CONVERT_EXPR:
    case NOP_EXPR:
      FUNC3 (pp, FUNC2 (e));
      FUNC5 (pp, FUNC1 (e, 0));
      break;

    default:
      FUNC4 (pp, e);
    }
}