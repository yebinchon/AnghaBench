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
 scalar_t__ GENERATE_DIVIDE_TRAPS ; 
 scalar_t__ TARGET_CHECK_ZERO_DIV ; 
 scalar_t__ TARGET_FIX_R4000 ; 
 scalar_t__ TARGET_FIX_R4400 ; 
 scalar_t__ TARGET_MIPS16 ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ *) ; 

const char *
FUNC1 (const char *division, rtx *operands)
{
  const char *s;

  s = division;
  if (TARGET_FIX_R4000 || TARGET_FIX_R4400)
    {
      FUNC0 (s, operands);
      s = "nop";
    }
  if (TARGET_CHECK_ZERO_DIV)
    {
      if (TARGET_MIPS16)
	{
	  FUNC0 (s, operands);
	  s = "bnez\t%2,1f\n\tbreak\t7\n1:";
	}
      else if (GENERATE_DIVIDE_TRAPS)
        {
	  FUNC0 (s, operands);
	  s = "teq\t%2,%.,7";
        }
      else
	{
	  FUNC0 ("%(bne\t%2,%.,1f", operands);
	  FUNC0 (s, operands);
	  s = "break\t7%)\n1:";
	}
    }
  return s;
}