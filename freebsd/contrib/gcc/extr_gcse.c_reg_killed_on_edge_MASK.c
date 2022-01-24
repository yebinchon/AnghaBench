#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rtx ;
typedef  TYPE_2__* edge ;
struct TYPE_4__ {scalar_t__ r; } ;
struct TYPE_5__ {TYPE_1__ insns; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static bool
FUNC3 (rtx reg, edge e)
{
  rtx insn;

  for (insn = e->insns.r; insn; insn = FUNC1 (insn))
    if (FUNC0 (insn) && FUNC2 (reg, insn))
      return true;

  return false;
}