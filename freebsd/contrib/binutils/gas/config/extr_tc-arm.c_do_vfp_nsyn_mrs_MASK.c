#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int reg; scalar_t__ isvec; } ;

/* Variables and functions */
 int FAIL ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char,int) ; 

__attribute__((used)) static int
FUNC4 (void)
{
  if (inst.operands[0].isvec)
    {
      if (inst.operands[1].reg != 1)
        FUNC2 (FUNC0("operand 1 must be FPSCR"));
      FUNC3 (&inst.operands[0], '\0', sizeof (inst.operands[0]));
      FUNC3 (&inst.operands[1], '\0', sizeof (inst.operands[1]));
      FUNC1 ("fmstat");
    }
  else if (inst.operands[1].isvec)
    FUNC1 ("fmrx");
  else
    return FAIL;
    
  return SUCCESS;
}