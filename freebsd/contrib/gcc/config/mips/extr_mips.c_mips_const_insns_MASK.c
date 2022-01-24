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
struct mips_integer_op {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum mips_symbol_type { ____Placeholder_mips_symbol_type } mips_symbol_type ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
#define  CONST 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  CONST_DOUBLE 133 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  CONST_INT 132 
#define  CONST_VECTOR 131 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
#define  HIGH 130 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  LABEL_REF 129 
 int MIPS_MAX_INTEGER_OPS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
#define  SYMBOL_REF 128 
 int /*<<< orphan*/  TARGET_MIPS16 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mips_integer_op*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/ * mips_split_p ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int*) ; 

int
FUNC13 (rtx x)
{
  struct mips_integer_op codes[MIPS_MAX_INTEGER_OPS];
  enum mips_symbol_type symbol_type;
  HOST_WIDE_INT offset;

  switch (FUNC2 (x))
    {
    case HIGH:
      if (TARGET_MIPS16
	  || !FUNC12 (FUNC7 (x, 0), &symbol_type)
	  || !mips_split_p[symbol_type])
	return 0;

      return 1;

    case CONST_INT:
      if (TARGET_MIPS16)
	/* Unsigned 8-bit constants can be loaded using an unextended
	   LI instruction.  Unsigned 16-bit constants can be loaded
	   using an extended LI.  Negative constants must be loaded
	   using LI and then negated.  */
	return (FUNC4 (x) >= 0 && FUNC4 (x) < 256 ? 1
		: FUNC6 (FUNC4 (x)) ? 2
		: FUNC4 (x) > -256 && FUNC4 (x) < 0 ? 2
		: FUNC6 (-FUNC4 (x)) ? 3
		: 0);

      return FUNC8 (codes, FUNC4 (x));

    case CONST_DOUBLE:
    case CONST_VECTOR:
      return (!TARGET_MIPS16 && x == FUNC0 (FUNC3 (x)) ? 1 : 0);

    case CONST:
      if (FUNC1 (x))
	return 1;

      /* See if we can refer to X directly.  */
      if (FUNC12 (x, &symbol_type))
	return FUNC11 (symbol_type);

      /* Otherwise try splitting the constant into a base and offset.
	 16-bit offsets can be added using an extra addiu.  Larger offsets
	 must be calculated separately and then added to the base.  */
      FUNC10 (x, &x, &offset);
      if (offset != 0)
	{
	  int n = FUNC13 (x);
	  if (n != 0)
	    {
	      if (FUNC5 (offset))
		return n + 1;
	      else
		return n + 1 + FUNC8 (codes, offset);
	    }
	}
      return 0;

    case SYMBOL_REF:
    case LABEL_REF:
      return FUNC11 (FUNC9 (x));

    default:
      return 0;
    }
}