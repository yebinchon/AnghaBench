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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 int UNSPEC_ADDRESS_FIRST ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

rtx
FUNC5 (rtx address, enum mips_symbol_type symbol_type)
{
  rtx base;
  HOST_WIDE_INT offset;

  FUNC3 (address, &base, &offset);
  base = FUNC2 (Pmode, FUNC0 (1, base),
			 UNSPEC_ADDRESS_FIRST + symbol_type);
  return FUNC4 (FUNC1 (Pmode, base), offset);
}