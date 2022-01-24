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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int fp_add; int fp_mult_sf; int fp_mult_df; int int_mult_si; int int_mult_di; int fp_div_sf; int fp_div_df; int int_div_di; int int_div_si; } ;

/* Variables and functions */
#define  ABS 159 
#define  AND 158 
#define  ASHIFT 157 
#define  ASHIFTRT 156 
#define  CONST 155 
 int CONSTANT_POOL_COST ; 
#define  CONST_DOUBLE 154 
#define  CONST_INT 153 
 int FUNC0 (int) ; 
 int DFmode ; 
#define  DIV 152 
 int DImode ; 
 int EQ ; 
#define  FFS 151 
#define  FIX 150 
#define  FLOAT 149 
#define  FLOAT_EXTEND 148 
 int FUNC1 (int) ; 
#define  FLOAT_TRUNCATE 147 
 int GE ; 
 int const FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int GEU ; 
 int GT ; 
 int GTU ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  IOR 146 
#define  LABEL_REF 145 
 int LE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int LEU ; 
#define  LO_SUM 144 
#define  LSHIFTRT 143 
 int LT ; 
 int LTU ; 
#define  MEM 142 
#define  MINUS 141 
#define  MOD 140 
#define  MULT 139 
 int NE ; 
#define  NEG 138 
#define  NOT 137 
#define  PLUS 136 
 int SET ; 
 int SFmode ; 
#define  SIGN_EXTEND 135 
 int SImode ; 
#define  SQRT 134 
#define  SYMBOL_REF 133 
 int /*<<< orphan*/  TARGET_64BIT ; 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
#define  UDIV 132 
#define  UMOD 131 
#define  UNSIGNED_FLOAT 130 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
#define  XOR 129 
#define  ZERO_EXTEND 128 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* mips_cost ; 

__attribute__((used)) static bool
FUNC8 (rtx x, int code, int outer_code, int *total)
{
  enum machine_mode mode = FUNC3 (x);
  bool float_mode_p = FUNC1 (mode);

  switch (code)
    {
    case CONST_INT:
      if (TARGET_MIPS16)
        {
	  /* A number between 1 and 8 inclusive is efficient for a shift.
	     Otherwise, we will need an extended instruction.  */
	  if ((outer_code) == ASHIFT || (outer_code) == ASHIFTRT
	      || (outer_code) == LSHIFTRT)
	    {
	      if (FUNC4 (x) >= 1 && FUNC4 (x) <= 8)
		*total = 0;
	      else
		*total = FUNC0 (1);
	      return true;
	    }

	  /* We can use cmpi for an xor with an unsigned 16 bit value.  */
	  if ((outer_code) == XOR
	      && FUNC4 (x) >= 0 && FUNC4 (x) < 0x10000)
	    {
	      *total = 0;
	      return true;
	    }

	  /* We may be able to use slt or sltu for a comparison with a
	     signed 16 bit value.  (The boundary conditions aren't quite
	     right, but this is just a heuristic anyhow.)  */
	  if (((outer_code) == LT || (outer_code) == LE
	       || (outer_code) == GE || (outer_code) == GT
	       || (outer_code) == LTU || (outer_code) == LEU
	       || (outer_code) == GEU || (outer_code) == GTU)
	      && FUNC4 (x) >= -0x8000 && FUNC4 (x) < 0x8000)
	    {
	      *total = 0;
	      return true;
	    }

	  /* Equality comparisons with 0 are cheap.  */
	  if (((outer_code) == EQ || (outer_code) == NE)
	      && FUNC4 (x) == 0)
	    {
	      *total = 0;
	      return true;
	    }

	  /* Constants in the range 0...255 can be loaded with an unextended
	     instruction.  They are therefore as cheap as a register move.

	     Given the choice between "li R1,0...255" and "move R1,R2"
	     (where R2 is a known constant), it is usually better to use "li",
	     since we do not want to unnecessarily extend the lifetime
	     of R2.  */
	  if (outer_code == SET
	      && FUNC4 (x) >= 0
	      && FUNC4 (x) < 256)
	    {
	      *total = 0;
	      return true;
	    }
	}
      else
	{
	  /* These can be used anywhere. */
	  *total = 0;
	  return true;
	}

      /* Otherwise fall through to the handling below because
	 we'll need to construct the constant.  */

    case CONST:
    case SYMBOL_REF:
    case LABEL_REF:
    case CONST_DOUBLE:
      if (FUNC5 (x))
	{
	  *total = FUNC0 (1);
	  return true;
	}
      else
	{
	  /* The value will need to be fetched from the constant pool.  */
	  *total = CONSTANT_POOL_COST;
	  return true;
	}

    case MEM:
      {
	/* If the address is legitimate, return the number of
	   instructions it needs, otherwise use the default handling.  */
	int n = FUNC7 (FUNC6 (x, 0), FUNC3 (x));
	if (n > 0)
	  {
	    *total = FUNC0 (n + 1);
	    return true;
	  }
	return false;
      }

    case FFS:
      *total = FUNC0 (6);
      return true;

    case NOT:
      *total = FUNC0 ((mode == DImode && !TARGET_64BIT) ? 2 : 1);
      return true;

    case AND:
    case IOR:
    case XOR:
      if (mode == DImode && !TARGET_64BIT)
        {
          *total = FUNC0 (2);
          return true;
        }
      return false;

    case ASHIFT:
    case ASHIFTRT:
    case LSHIFTRT:
      if (mode == DImode && !TARGET_64BIT)
        {
          *total = FUNC0 ((FUNC2 (FUNC6 (x, 1)) == CONST_INT)
                                  ? 4 : 12);
          return true;
        }
      return false;

    case ABS:
      if (float_mode_p)
        *total = FUNC0 (1);
      else
        *total = FUNC0 (4);
      return true;

    case LO_SUM:
      *total = FUNC0 (1);
      return true;

    case PLUS:
    case MINUS:
      if (float_mode_p)
	{
	  *total = mips_cost->fp_add;
	  return true;
	}

      else if (mode == DImode && !TARGET_64BIT)
        {
          *total = FUNC0 (4);
          return true;
        }
      return false;

    case NEG:
      if (mode == DImode && !TARGET_64BIT)
        {
          *total = FUNC0 (4);
          return true;
        }
      return false;

    case MULT:
      if (mode == SFmode)
	*total = mips_cost->fp_mult_sf;

      else if (mode == DFmode)
	*total = mips_cost->fp_mult_df;

      else if (mode == SImode)
	*total = mips_cost->int_mult_si;

      else
	*total = mips_cost->int_mult_di;

      return true;

    case DIV:
    case MOD:
      if (float_mode_p)
	{
	  if (mode == SFmode)
	    *total = mips_cost->fp_div_sf;
	  else
	    *total = mips_cost->fp_div_df;

	  return true;
	}
      /* Fall through.  */

    case UDIV:
    case UMOD:
      if (mode == DImode)
        *total = mips_cost->int_div_di;
      else
	*total = mips_cost->int_div_si;

      return true;

    case SIGN_EXTEND:
      /* A sign extend from SImode to DImode in 64 bit mode is often
         zero instructions, because the result can often be used
         directly by another instruction; we'll call it one.  */
      if (TARGET_64BIT && mode == DImode
          && FUNC3 (FUNC6 (x, 0)) == SImode)
        *total = FUNC0 (1);
      else
        *total = FUNC0 (2);
      return true;

    case ZERO_EXTEND:
      if (TARGET_64BIT && mode == DImode
          && FUNC3 (FUNC6 (x, 0)) == SImode)
        *total = FUNC0 (2);
      else
        *total = FUNC0 (1);
      return true;

    case FLOAT:
    case UNSIGNED_FLOAT:
    case FIX:
    case FLOAT_EXTEND:
    case FLOAT_TRUNCATE:
    case SQRT:
      *total = mips_cost->fp_add;
      return true;

    default:
      return false;
    }
}