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
struct mips_address_info {size_t symbol_type; void* type; void* reg; void* offset; } ;
typedef  void* rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 void* ADDRESS_CONST_INT ; 
 void* ADDRESS_LO_SUM ; 
 void* ADDRESS_REG ; 
 void* ADDRESS_SYMBOLIC ; 
#define  CONST 135 
#define  CONST_INT 134 
 int FUNC0 (void*) ; 
#define  LABEL_REF 133 
#define  LO_SUM 132 
#define  PLUS 131 
#define  REG 130 
 int /*<<< orphan*/  FUNC1 (void*) ; 
#define  SUBREG 129 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
 int /*<<< orphan*/  VOIDmode ; 
 void* FUNC2 (void*,int) ; 
 void* const0_rtx ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (void*) ; 
 int /*<<< orphan*/ * mips_lo_relocs ; 
 int /*<<< orphan*/ * mips_split_p ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,size_t*) ; 
 int FUNC7 (void*,int,int) ; 

__attribute__((used)) static bool
FUNC8 (struct mips_address_info *info, rtx x,
		       enum machine_mode mode, int strict)
{
  switch (FUNC0 (x))
    {
    case REG:
    case SUBREG:
      info->type = ADDRESS_REG;
      info->reg = x;
      info->offset = const0_rtx;
      return FUNC7 (info->reg, mode, strict);

    case PLUS:
      info->type = ADDRESS_REG;
      info->reg = FUNC2 (x, 0);
      info->offset = FUNC2 (x, 1);
      return (FUNC7 (info->reg, mode, strict)
	      && FUNC3 (info->offset, VOIDmode));

    case LO_SUM:
      info->type = ADDRESS_LO_SUM;
      info->reg = FUNC2 (x, 0);
      info->offset = FUNC2 (x, 1);
      /* We have to trust the creator of the LO_SUM to do something vaguely
	 sane.  Target-independent code that creates a LO_SUM should also
	 create and verify the matching HIGH.  Target-independent code that
	 adds an offset to a LO_SUM must prove that the offset will not
	 induce a carry.  Failure to do either of these things would be
	 a bug, and we are not required to check for it here.  The MIPS
	 backend itself should only create LO_SUMs for valid symbolic
	 constants, with the high part being either a HIGH or a copy
	 of _gp. */
      info->symbol_type = FUNC4 (info->offset);
      return (FUNC7 (info->reg, mode, strict)
	      && FUNC5 (info->symbol_type, mode)
	      && mips_lo_relocs[info->symbol_type] != 0);

    case CONST_INT:
      /* Small-integer addresses don't occur very often, but they
	 are legitimate if $0 is a valid base register.  */
      info->type = ADDRESS_CONST_INT;
      return !TARGET_MIPS16 && FUNC1 (x);

    case CONST:
    case LABEL_REF:
    case SYMBOL_REF:
      info->type = ADDRESS_SYMBOLIC;
      return (FUNC6 (x, &info->symbol_type)
	      && FUNC5 (info->symbol_type, mode)
	      && !mips_split_p[info->symbol_type]);

    default:
      return false;
    }
}