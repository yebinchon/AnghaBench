#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {int n_operands; int /*<<< orphan*/ * operand; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 

bool
FUNC3 (rtx insn)
{
  int i;
  FUNC2 (insn);
  for (i = 0; i < recog_data.n_operands; i++)
    if (FUNC1 (recog_data.operand[i])
	&& FUNC0 (recog_data.operand[i]) >= 4)
       return true;
  return false;
}