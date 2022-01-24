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

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* mips_split_p ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rtx
FUNC4 (rtx temp, rtx base, rtx addr,
			 enum mips_symbol_type symbol_type)
{
  if (mips_split_p[symbol_type])
    {
      addr = FUNC0 (Pmode, FUNC3 (addr, symbol_type));
      addr = FUNC2 (temp, addr);
      return FUNC2 (temp, FUNC1 (Pmode, addr, base));
    }
  return base;
}