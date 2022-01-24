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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 char* REGISTER_PREFIX ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 char** reg_names ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 

const char *
FUNC7 (rtx *operands, int nops)
{
  int regs[4];
  int base_reg;
  HOST_WIDE_INT offset;
  char buf[100];
  int i;

  switch (FUNC1 (operands, nops, regs, &base_reg, &offset))
    {
    case 1:
      FUNC5 (buf, "ldm%?ia\t");
      break;

    case 2:
      FUNC5 (buf, "ldm%?ib\t");
      break;

    case 3:
      FUNC5 (buf, "ldm%?da\t");
      break;

    case 4:
      FUNC5 (buf, "ldm%?db\t");
      break;

    case 5:
      if (offset >= 0)
	FUNC3 (buf, "add%%?\t%s%s, %s%s, #%ld", REGISTER_PREFIX,
		 reg_names[regs[0]], REGISTER_PREFIX, reg_names[base_reg],
		 (long) offset);
      else
	FUNC3 (buf, "sub%%?\t%s%s, %s%s, #%ld", REGISTER_PREFIX,
		 reg_names[regs[0]], REGISTER_PREFIX, reg_names[base_reg],
		 (long) -offset);
      FUNC2 (buf, operands);
      base_reg = regs[0];
      FUNC5 (buf, "ldm%?ia\t");
      break;

    default:
      FUNC0 ();
    }

  FUNC3 (buf + FUNC6 (buf), "%s%s, {%s%s", REGISTER_PREFIX,
	   reg_names[base_reg], REGISTER_PREFIX, reg_names[regs[0]]);

  for (i = 1; i < nops; i++)
    FUNC3 (buf + FUNC6 (buf), ", %s%s", REGISTER_PREFIX,
	     reg_names[regs[i]]);

  FUNC4 (buf, "}\t%@ phole ldm");

  FUNC2 (buf, operands);
  return "";
}