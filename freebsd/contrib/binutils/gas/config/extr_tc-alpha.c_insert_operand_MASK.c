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
struct alpha_operand {int bits; int flags; unsigned int (* insert ) (unsigned int,int,char const**) ;int shift; } ;
typedef  int offsetT ;

/* Variables and functions */
 int AXP_OPERAND_NOOVERFLOW ; 
 int AXP_OPERAND_SIGNED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int,char*,unsigned int) ; 
 unsigned int FUNC3 (unsigned int,int,char const**) ; 

__attribute__((used)) static unsigned
FUNC4 (unsigned insn,
		const struct alpha_operand *operand,
		offsetT val,
		char *file,
		unsigned line)
{
  if (operand->bits != 32 && !(operand->flags & AXP_OPERAND_NOOVERFLOW))
    {
      offsetT min, max;

      if (operand->flags & AXP_OPERAND_SIGNED)
	{
	  max = (1 << (operand->bits - 1)) - 1;
	  min = -(1 << (operand->bits - 1));
	}
      else
	{
	  max = (1 << operand->bits) - 1;
	  min = 0;
	}

      if (val < min || val > max)
	FUNC2 (FUNC0("operand"), val, min, max, file, line);
    }

  if (operand->insert)
    {
      const char *errmsg = NULL;

      insn = (*operand->insert) (insn, val, &errmsg);
      if (errmsg)
	FUNC1 (errmsg);
    }
  else
    insn |= ((val & ((1 << operand->bits) - 1)) << operand->shift);

  return insn;
}