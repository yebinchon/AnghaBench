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
struct mips_address_info {int type; int /*<<< orphan*/  symbol_type; int /*<<< orphan*/  offset; int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
#define  ADDRESS_CONST_INT 131 
#define  ADDRESS_LO_SUM 130 
#define  ADDRESS_REG 129 
#define  ADDRESS_SYMBOLIC 128 
 int BLKmode ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
 int UNITS_PER_WORD ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct mips_address_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (rtx x, enum machine_mode mode)
{
  struct mips_address_info addr;
  int factor;

  if (mode == BLKmode)
    /* BLKmode is used for single unaligned loads and stores.  */
    factor = 1;
  else
    /* Each word of a multi-word value will be accessed individually.  */
    factor = (FUNC0 (mode) + UNITS_PER_WORD - 1) / UNITS_PER_WORD;

  if (FUNC2 (&addr, x, mode, false))
    switch (addr.type)
      {
      case ADDRESS_REG:
	if (TARGET_MIPS16
	    && !FUNC1 (mode, addr.reg, addr.offset))
	  return factor * 2;
	return factor;

      case ADDRESS_LO_SUM:
	return (TARGET_MIPS16 ? factor * 2 : factor);

      case ADDRESS_CONST_INT:
	return factor;

      case ADDRESS_SYMBOLIC:
	return factor * FUNC3 (addr.symbol_type);
      }
  return 0;
}