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
struct gdbarch_tdep {scalar_t__ ppc_gp0_regnum; } ;
struct gdbarch {int dummy; } ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;
typedef  char bfd_byte ;
typedef  int /*<<< orphan*/  ULONGEST ;

/* Variables and functions */
 scalar_t__ FP0_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 scalar_t__ TYPE_CODE_COMPLEX ; 
 scalar_t__ TYPE_CODE_FLT ; 
 scalar_t__ TYPE_CODE_INT ; 
 scalar_t__ TYPE_CODE_PTR ; 
 int FUNC1 (struct type*) ; 
 struct type* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct type*,char*,struct type*) ; 
 struct gdbarch* current_gdbarch ; 
 struct gdbarch_tdep* FUNC4 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct regcache*,scalar_t__,int,int,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct regcache*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct regcache*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct regcache*,scalar_t__,int,int,void const*) ; 
 int /*<<< orphan*/  FUNC10 (struct regcache*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct gdbarch*,scalar_t__) ; 
 struct type* FUNC12 (struct gdbarch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct type*,void const*) ; 

enum return_value_convention
FUNC15 (struct gdbarch *gdbarch, struct type *valtype,
			     struct regcache *regcache, void *readbuf,
			     const void *writebuf)
{
  struct gdbarch_tdep *tdep = FUNC4 (gdbarch);
  /* Floats and doubles in F1.  */
  if (FUNC0 (valtype) == TYPE_CODE_FLT && FUNC1 (valtype) <= 8)
    {
      char regval[MAX_REGISTER_SIZE];
      struct type *regtype = FUNC12 (gdbarch, FP0_REGNUM);
      if (writebuf != NULL)
	{
	  FUNC3 (writebuf, valtype, regval, regtype);
	  FUNC8 (regcache, FP0_REGNUM + 1, regval);
	}
      if (readbuf != NULL)
	{
	  FUNC5 (regcache, FP0_REGNUM + 1, regval);
	  FUNC3 (regval, regtype, readbuf, valtype);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (FUNC0 (valtype) == TYPE_CODE_INT && FUNC1 (valtype) <= 8)
    {
      /* Integers in r3.  */
      if (writebuf != NULL)
	{
	  /* Be careful to sign extend the value.  */
	  FUNC10 (regcache, tdep->ppc_gp0_regnum + 3,
					  FUNC14 (valtype, writebuf));
	}
      if (readbuf != NULL)
	{
	  /* Extract the integer from r3.  Since this is truncating the
	     value, there isn't a sign extension problem.  */
	  ULONGEST regval;
	  FUNC7 (regcache, tdep->ppc_gp0_regnum + 3,
					 &regval);
	  FUNC13 (readbuf, FUNC1 (valtype), regval);
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  /* All pointers live in r3.  */
  if (FUNC0 (valtype) == TYPE_CODE_PTR)
    {
      /* All pointers live in r3.  */
      if (writebuf != NULL)
	FUNC8 (regcache, tdep->ppc_gp0_regnum + 3, writebuf);
      if (readbuf != NULL)
	FUNC5 (regcache, tdep->ppc_gp0_regnum + 3, readbuf);
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  if (FUNC0 (valtype) == TYPE_CODE_ARRAY
      && FUNC1 (valtype) <= 8
      && FUNC0 (FUNC2 (valtype)) == TYPE_CODE_INT
      && FUNC1 (FUNC2 (valtype)) == 1)
    {
      /* Small character arrays are returned, right justified, in r3.  */
      int offset = (FUNC11 (gdbarch, tdep->ppc_gp0_regnum + 3)
		    - FUNC1 (valtype));
      if (writebuf != NULL)
	FUNC9 (regcache, tdep->ppc_gp0_regnum + 3,
				    offset, FUNC1 (valtype), writebuf);
      if (readbuf != NULL)
	FUNC6 (regcache, tdep->ppc_gp0_regnum + 3,
				   offset, FUNC1 (valtype), readbuf);
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  /* Big floating point values get stored in adjacent floating
     point registers.  */
  if (FUNC0 (valtype) == TYPE_CODE_FLT
      && (FUNC1 (valtype) == 16 || FUNC1 (valtype) == 32))
    {
      if (writebuf || readbuf != NULL)
	{
	  int i;
	  for (i = 0; i < FUNC1 (valtype) / 8; i++)
	    {
	      if (writebuf != NULL)
		FUNC8 (regcache, FP0_REGNUM + 1 + i,
				       (const bfd_byte *) writebuf + i * 8);
	      if (readbuf != NULL)
		FUNC5 (regcache, FP0_REGNUM + 1 + i,
				      (bfd_byte *) readbuf + i * 8);
	    }
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  /* Complex values get returned in f1:f2, need to convert.  */
  if (FUNC0 (valtype) == TYPE_CODE_COMPLEX
      && (FUNC1 (valtype) == 8 || FUNC1 (valtype) == 16))
    {
      if (regcache != NULL)
	{
	  int i;
	  for (i = 0; i < 2; i++)
	    {
	      char regval[MAX_REGISTER_SIZE];
	      struct type *regtype =
		FUNC12 (current_gdbarch, FP0_REGNUM);
	      if (writebuf != NULL)
		{
		  FUNC3 ((const bfd_byte *) writebuf +
					  i * (FUNC1 (valtype) / 2),
					  valtype, regval, regtype);
		  FUNC8 (regcache, FP0_REGNUM + 1 + i,
					 regval);
		}
	      if (readbuf != NULL)
		{
		  FUNC5 (regcache, FP0_REGNUM + 1 + i, regval);
		  FUNC3 (regval, regtype,
					  (bfd_byte *) readbuf +
					  i * (FUNC1 (valtype) / 2),
					  valtype);
		}
	    }
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  /* Big complex values get stored in f1:f4.  */
  if (FUNC0 (valtype) == TYPE_CODE_COMPLEX && FUNC1 (valtype) == 32)
    {
      if (regcache != NULL)
	{
	  int i;
	  for (i = 0; i < 4; i++)
	    {
	      if (writebuf != NULL)
		FUNC8 (regcache, FP0_REGNUM + 1 + i,
				       (const bfd_byte *) writebuf + i * 8);
	      if (readbuf != NULL)
		FUNC5 (regcache, FP0_REGNUM + 1 + i,
				      (bfd_byte *) readbuf + i * 8);
	    }
	}
      return RETURN_VALUE_REGISTER_CONVENTION;
    }
  return RETURN_VALUE_STRUCT_CONVENTION;
}