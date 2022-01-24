#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_1__* optab ;
typedef  enum optab_methods { ____Placeholder_optab_methods } optab_methods ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_4__ {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC3 (enum machine_mode mode, optab binoptab,
		       rtx op0, rtx op1, rtx target, int unsignedp,
		       enum optab_methods methods)
{
  if (FUNC0 (op0) && FUNC0 (op1))
    {
      rtx x = FUNC2 (binoptab->code, mode, op0, op1);

      if (x)
	return x;
    }

  return FUNC1 (mode, binoptab, op0, op1, target, unsignedp, methods);
}