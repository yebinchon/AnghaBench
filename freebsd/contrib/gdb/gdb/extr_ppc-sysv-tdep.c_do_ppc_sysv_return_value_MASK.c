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
struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {int wordsize; scalar_t__ ppc_vr0_regnum; scalar_t__ ppc_ev0_regnum; scalar_t__ ppc_gp0_regnum; } ;
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
typedef  void bfd_byte ;
typedef  int /*<<< orphan*/  ULONGEST ;

/* Variables and functions */
 scalar_t__ FP0_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_INT ; 
 int FUNC1 (struct type*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (void const*,struct type*,char*,struct type*) ; 
 int /*<<< orphan*/  FUNC4 (void const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct gdbarch_tdep* FUNC6 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC7 (char*,void const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC10 (struct regcache*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct regcache*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct regcache*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct regcache*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct type* FUNC14 (struct gdbarch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct type*,void const*) ; 

__attribute__((used)) static enum return_value_convention
FUNC17 (struct gdbarch *gdbarch, struct type *type,
			  struct regcache *regcache, void *readbuf,
			  const void *writebuf, int broken_gcc)
{
  struct gdbarch_tdep *tdep = FUNC6 (gdbarch);
  FUNC5 (tdep->wordsize == 4);
  if (FUNC0 (type) == TYPE_CODE_FLT
      && FUNC1 (type) <= 8
      && FUNC9 (gdbarch))
    {
      if (readbuf)
	{
	  /* Floats and doubles stored in "f1".  Convert the value to
	     the required type.  */
	  char regval[MAX_REGISTER_SIZE];
	  struct type *regtype = FUNC14 (gdbarch, FP0_REGNUM + 1);
	  FUNC10 (regcache, FP0_REGNUM + 1, regval);
	  FUNC3 (regval, regtype, readbuf, type);
	}
      if (writebuf)
	{
	  /* Floats and doubles stored in "f1".  Convert the value to
	     the register's "double" type.  */
	  char regval[MAX_REGISTER_SIZE];
	  struct type *regtype = FUNC14 (gdbarch, FP0_REGNUM);
	  FUNC3 (writebuf, type, regval, regtype);
	  FUNC12 (regcache, FP0_REGNUM + 1, regval);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if ((FUNC0 (type) == TYPE_CODE_INT && FUNC1 (type) == 8)
      || (FUNC0 (type) == TYPE_CODE_FLT && FUNC1 (type) == 8))
    {
      if (readbuf)
	{
	  /* A long long, or a double stored in the 32 bit r3/r4.  */
	  FUNC10 (regcache, tdep->ppc_gp0_regnum + 3,
				(bfd_byte *) readbuf + 0);
	  FUNC10 (regcache, tdep->ppc_gp0_regnum + 4,
				(bfd_byte *) readbuf + 4);
	}
      if (writebuf)
	{
	  /* A long long, or a double stored in the 32 bit r3/r4.  */
	  FUNC12 (regcache, tdep->ppc_gp0_regnum + 3,
				 (const bfd_byte *) writebuf + 0);
	  FUNC12 (regcache, tdep->ppc_gp0_regnum + 4,
				 (const bfd_byte *) writebuf + 4);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (FUNC0 (type) == TYPE_CODE_INT
      && FUNC1 (type) <= tdep->wordsize)
    {
      if (readbuf)
	{
	  /* Some sort of integer stored in r3.  Since TYPE isn't
	     bigger than the register, sign extension isn't a problem
	     - just do everything unsigned.  */
	  ULONGEST regval;
	  FUNC11 (regcache, tdep->ppc_gp0_regnum + 3,
					 &regval);
	  FUNC15 (readbuf, FUNC1 (type), regval);
	}
      if (writebuf)
	{
	  /* Some sort of integer stored in r3.  Use unpack_long since
	     that should handle any required sign extension.  */
	  FUNC13 (regcache, tdep->ppc_gp0_regnum + 3,
					  FUNC16 (type, writebuf));
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (FUNC1 (type) == 16
      && FUNC0 (type) == TYPE_CODE_ARRAY
      && FUNC2 (type) && tdep->ppc_vr0_regnum >= 0)
    {
      if (readbuf)
	{
	  /* Altivec places the return value in "v2".  */
	  FUNC10 (regcache, tdep->ppc_vr0_regnum + 2, readbuf);
	}
      if (writebuf)
	{
	  /* Altivec places the return value in "v2".  */
	  FUNC12 (regcache, tdep->ppc_vr0_regnum + 2, writebuf);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (FUNC1 (type) == 8
      && FUNC0 (type) == TYPE_CODE_ARRAY
      && FUNC2 (type) && tdep->ppc_ev0_regnum >= 0)
    {
      /* The e500 ABI places return values for the 64-bit DSP types
	 (__ev64_opaque__) in r3.  However, in GDB-speak, ev3
	 corresponds to the entire r3 value for e500, whereas GDB's r3
	 only corresponds to the least significant 32-bits.  So place
	 the 64-bit DSP type's value in ev3.  */
      if (readbuf)
	FUNC10 (regcache, tdep->ppc_ev0_regnum + 3, readbuf);
      if (writebuf)
	FUNC12 (regcache, tdep->ppc_ev0_regnum + 3, writebuf);
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (broken_gcc && FUNC1 (type) <= 8)
    {
      if (readbuf)
	{
	  /* GCC screwed up.  The last register isn't "left" aligned.
	     Need to extract the least significant part of each
	     register and then store that.  */
	  /* Transfer any full words.  */
	  int word = 0;
	  while (1)
	    {
	      ULONGEST reg;
	      int len = FUNC1 (type) - word * tdep->wordsize;
	      if (len <= 0)
		break;
	      if (len > tdep->wordsize)
		len = tdep->wordsize;
	      FUNC11 (regcache,
					     tdep->ppc_gp0_regnum + 3 + word,
					     &reg);
	      FUNC15 (((bfd_byte *) readbuf
				       + word * tdep->wordsize), len, reg);
	      word++;
	    }
	}
      if (writebuf)
	{
	  /* GCC screwed up.  The last register isn't "left" aligned.
	     Need to extract the least significant part of each
	     register and then store that.  */
	  /* Transfer any full words.  */
	  int word = 0;
	  while (1)
	    {
	      ULONGEST reg;
	      int len = FUNC1 (type) - word * tdep->wordsize;
	      if (len <= 0)
		break;
	      if (len > tdep->wordsize)
		len = tdep->wordsize;
	      reg = FUNC4 (((const bfd_byte *) writebuf
					       + word * tdep->wordsize), len);
	      FUNC13 (regcache,
					      tdep->ppc_gp0_regnum + 3 + word,
					      reg);
	      word++;
	    }
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (FUNC1 (type) <= 8)
    {
      if (readbuf)
	{
	  /* This matches SVr4 PPC, it does not match GCC.  */
	  /* The value is right-padded to 8 bytes and then loaded, as
	     two "words", into r3/r4.  */
	  char regvals[MAX_REGISTER_SIZE * 2];
	  FUNC10 (regcache, tdep->ppc_gp0_regnum + 3,
				regvals + 0 * tdep->wordsize);
	  if (FUNC1 (type) > tdep->wordsize)
	    FUNC10 (regcache, tdep->ppc_gp0_regnum + 4,
				  regvals + 1 * tdep->wordsize);
	  FUNC7 (readbuf, regvals, FUNC1 (type));
	}
      if (writebuf)
	{
	  /* This matches SVr4 PPC, it does not match GCC.  */
	  /* The value is padded out to 8 bytes and then loaded, as
	     two "words" into r3/r4.  */
	  char regvals[MAX_REGISTER_SIZE * 2];
	  FUNC8 (regvals, 0, sizeof regvals);
	  FUNC7 (regvals, writebuf, FUNC1 (type));
	  FUNC12 (regcache, tdep->ppc_gp0_regnum + 3,
				 regvals + 0 * tdep->wordsize);
	  if (FUNC1 (type) > tdep->wordsize)
	    FUNC12 (regcache, tdep->ppc_gp0_regnum + 4,
				   regvals + 1 * tdep->wordsize);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  return RETURN_VALUE_STRUCT_CONVENTION;
}