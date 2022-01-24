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
typedef  enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__* mips_split_p ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

bool
FUNC11 (rtx *xloc, enum machine_mode mode)
{
  enum mips_symbol_type symbol_type;

  if (FUNC9 (*xloc))
    {
      *xloc = FUNC5 (*xloc);
      return true;
    }

  /* See if the address can split into a high part and a LO_SUM.  */
  if (FUNC8 (*xloc, &symbol_type)
      && FUNC7 (symbol_type, mode)
      && mips_split_p[symbol_type])
    {
      *xloc = FUNC6 (0, *xloc);
      return true;
    }

  if (FUNC0 (*xloc) == PLUS && FUNC0 (FUNC2 (*xloc, 1)) == CONST_INT)
    {
      /* Handle REG + CONSTANT using mips_add_offset.  */
      rtx reg;

      reg = FUNC2 (*xloc, 0);
      if (!FUNC10 (reg, mode, 0))
	reg = FUNC3 (Pmode, reg);
      *xloc = FUNC4 (0, reg, FUNC1 (FUNC2 (*xloc, 1)));
      return true;
    }

  return false;
}