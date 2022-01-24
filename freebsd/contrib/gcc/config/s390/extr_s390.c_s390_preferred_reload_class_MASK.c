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
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;

/* Variables and functions */
 int ADDR_REGS ; 
#define  CONST 133 
#define  CONST_DOUBLE 132 
#define  CONST_INT 131 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 130 
 int NO_REGS ; 
#define  PLUS 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

enum reg_class
FUNC3 (rtx op, enum reg_class class)
{
  switch (FUNC0 (op))
    {
      /* Constants we cannot reload must be forced into the
	 literal pool.  */

      case CONST_DOUBLE:
      case CONST_INT:
	if (FUNC1 (op))
	  return class;
	else
	  return NO_REGS;

      /* If a symbolic constant or a PLUS is reloaded,
	 it is most likely being used as an address, so
	 prefer ADDR_REGS.  If 'class' is not a superset
	 of ADDR_REGS, e.g. FP_REGS, reject this reload.  */
      case PLUS:
      case LABEL_REF:
      case SYMBOL_REF:
      case CONST:
	if (FUNC2 (ADDR_REGS, class))
          return ADDR_REGS;
	else
	  return NO_REGS;

      default:
	break;
    }

  return class;
}