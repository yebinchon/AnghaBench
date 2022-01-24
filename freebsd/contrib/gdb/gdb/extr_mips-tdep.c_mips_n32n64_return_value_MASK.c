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
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {scalar_t__ mips_fpu_type; } ;
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
struct TYPE_2__ {int fp0; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ENDIAN_UNKNOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MIPS_FPU_NONE ; 
 scalar_t__ NUM_REGS ; 
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 int /*<<< orphan*/  TARGET_BYTE_ORDER ; 
 int TARGET_CHAR_BIT ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int /*<<< orphan*/ * FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*,int) ; 
 int FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 int V0_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 struct gdbarch_tdep* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ mips_debug ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct gdbarch_tdep*) ; 
 int /*<<< orphan*/  FUNC10 (struct regcache*,scalar_t__,int,int /*<<< orphan*/ ,void*,void const*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum return_value_convention
FUNC12 (struct gdbarch *gdbarch,
			  struct type *type, struct regcache *regcache,
			  void *readbuf, const void *writebuf)
{
  struct gdbarch_tdep *tdep = FUNC7 (current_gdbarch);
  if (FUNC1 (type) == TYPE_CODE_STRUCT
      || FUNC1 (type) == TYPE_CODE_UNION
      || FUNC1 (type) == TYPE_CODE_ARRAY
      || FUNC4 (type) > 2 * FUNC9 (tdep))
    return RETURN_VALUE_STRUCT_CONVENTION;
  else if (FUNC1 (type) == TYPE_CODE_FLT
	   && tdep->mips_fpu_type != MIPS_FPU_NONE)
    {
      /* A floating-point value belongs in the least significant part
         of FP0.  */
      if (mips_debug)
	FUNC6 (gdb_stderr, "Return float in $fp0\n");
      FUNC10 (regcache,
			  NUM_REGS + FUNC8 (current_gdbarch)->fp0,
			  FUNC4 (type),
			  TARGET_BYTE_ORDER, readbuf, writebuf, 0);
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else if (FUNC1 (type) == TYPE_CODE_STRUCT
	   && FUNC5 (type) <= 2
	   && FUNC5 (type) >= 1
	   && ((FUNC5 (type) == 1
		&& (FUNC1 (FUNC3 (type, 0))
		    == TYPE_CODE_FLT))
	       || (FUNC5 (type) == 2
		   && (FUNC1 (FUNC3 (type, 0))
		       == TYPE_CODE_FLT)
		   && (FUNC1 (FUNC3 (type, 1))
		       == TYPE_CODE_FLT)))
	   && tdep->mips_fpu_type != MIPS_FPU_NONE)
    {
      /* A struct that contains one or two floats.  Each value is part
         in the least significant part of their floating point
         register..  */
      int regnum;
      int field;
      for (field = 0, regnum = FUNC8 (current_gdbarch)->fp0;
	   field < FUNC5 (type); field++, regnum += 2)
	{
	  int offset = (FUNC0 (FUNC2 (type)[field])
			/ TARGET_CHAR_BIT);
	  if (mips_debug)
	    FUNC6 (gdb_stderr, "Return float struct+%d\n",
				offset);
	  FUNC10 (regcache, NUM_REGS + regnum,
			      FUNC4 (FUNC3 (type, field)),
			      TARGET_BYTE_ORDER, readbuf, writebuf, offset);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else if (FUNC1 (type) == TYPE_CODE_STRUCT
	   || FUNC1 (type) == TYPE_CODE_UNION)
    {
      /* A structure or union.  Extract the left justified value,
         regardless of the byte order.  I.e. DO NOT USE
         mips_xfer_lower.  */
      int offset;
      int regnum;
      for (offset = 0, regnum = V0_REGNUM;
	   offset < FUNC4 (type);
	   offset += FUNC11 (current_gdbarch, regnum), regnum++)
	{
	  int xfer = FUNC11 (current_gdbarch, regnum);
	  if (offset + xfer > FUNC4 (type))
	    xfer = FUNC4 (type) - offset;
	  if (mips_debug)
	    FUNC6 (gdb_stderr, "Return struct+%d:%d in $%d\n",
				offset, xfer, regnum);
	  FUNC10 (regcache, NUM_REGS + regnum, xfer,
			      BFD_ENDIAN_UNKNOWN, readbuf, writebuf, offset);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  else
    {
      /* A scalar extract each part but least-significant-byte
         justified.  */
      int offset;
      int regnum;
      for (offset = 0, regnum = V0_REGNUM;
	   offset < FUNC4 (type);
	   offset += FUNC11 (current_gdbarch, regnum), regnum++)
	{
	  int xfer = FUNC11 (current_gdbarch, regnum);
	  if (offset + xfer > FUNC4 (type))
	    xfer = FUNC4 (type) - offset;
	  if (mips_debug)
	    FUNC6 (gdb_stderr, "Return scalar+%d:%d in $%d\n",
				offset, xfer, regnum);
	  FUNC10 (regcache, NUM_REGS + regnum, xfer,
			      TARGET_BYTE_ORDER, readbuf, writebuf, offset);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
}