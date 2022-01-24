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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  MODE_DI 131 
#define  MODE_HI 130 
#define  MODE_QI 129 
#define  MODE_SI 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (rtx insn, int shortform)
{
  int len = 0;
  int i;
  FUNC1 (insn);
  for (i = recog_data.n_operands - 1; i >= 0; --i)
    if (FUNC0 (recog_data.operand[i]))
      {
	FUNC3 (!len);
	if (shortform && FUNC5 (recog_data.operand[i]))
	  len = 1;
	else
	  {
	    switch (FUNC4 (insn))
	      {
		case MODE_QI:
		  len+=1;
		  break;
		case MODE_HI:
		  len+=2;
		  break;
		case MODE_SI:
		  len+=4;
		  break;
		/* Immediates for DImode instructions are encoded as 32bit sign extended values.  */
		case MODE_DI:
		  len+=4;
		  break;
		default:
		  FUNC2 ("unknown insn mode", insn);
	      }
	  }
      }
  return len;
}