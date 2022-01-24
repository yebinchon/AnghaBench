#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum integer_type_kind { ____Placeholder_integer_type_kind } integer_type_kind ;
typedef  int /*<<< orphan*/  cpp_token ;
struct TYPE_7__ {int /*<<< orphan*/  precision; } ;
typedef  TYPE_1__ cpp_options ;
struct TYPE_8__ {int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  TYPE_2__ cpp_num ;

/* Variables and functions */
 unsigned int CPP_N_DECIMAL ; 
 unsigned int CPP_N_IMAGINARY ; 
 unsigned int CPP_N_LARGE ; 
 unsigned int CPP_N_RADIX ; 
 unsigned int CPP_N_UNSIGNED ; 
 unsigned int CPP_N_WIDTH ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wtraditional ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,unsigned int) ; 
 TYPE_2__ FUNC6 (TYPE_2__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  in_system_header ; 
 int /*<<< orphan*/ * integer_types ; 
 int itk_long ; 
 int itk_none ; 
 int itk_unsigned_long ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  parse_in ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  widest_integer_literal_type_node ; 
 int /*<<< orphan*/  widest_unsigned_literal_type_node ; 

__attribute__((used)) static tree
FUNC11 (const cpp_token *token, unsigned int flags)
{
  tree value, type;
  enum integer_type_kind itk;
  cpp_num integer;
  cpp_options *options = FUNC4 (parse_in);

  integer = FUNC5 (parse_in, token, flags);
  integer = FUNC6 (integer, options->precision);

  /* The type of a constant with a U suffix is straightforward.  */
  if (flags & CPP_N_UNSIGNED)
    itk = FUNC8 (integer.low, integer.high, flags);
  else
    {
      /* The type of a potentially-signed integer constant varies
	 depending on the base it's in, the standard in use, and the
	 length suffixes.  */
      enum integer_type_kind itk_u
	= FUNC8 (integer.low, integer.high, flags);
      enum integer_type_kind itk_s
	= FUNC7 (integer.low, integer.high, flags);

      /* In both C89 and C99, octal and hex constants may be signed or
	 unsigned, whichever fits tighter.  We do not warn about this
	 choice differing from the traditional choice, as the constant
	 is probably a bit pattern and either way will work.  */
      if ((flags & CPP_N_RADIX) != CPP_N_DECIMAL)
	itk = FUNC0 (itk_u, itk_s);
      else
	{
	  /* In C99, decimal constants are always signed.
	     In C89, decimal constants that don't fit in long have
	     undefined behavior; we try to make them unsigned long.
	     In GCC's extended C89, that last is true of decimal
	     constants that don't fit in long long, too.  */

	  itk = itk_s;
	  if (itk_s > itk_u && itk_s > itk_long)
	    {
	      if (!flag_isoc99)
		{
		  if (itk_u < itk_unsigned_long)
		    itk_u = itk_unsigned_long;
		  itk = itk_u;
		  FUNC10 (0, "this decimal constant is unsigned only in ISO C90");
		}
	      else
		FUNC10 (OPT_Wtraditional,
			 "this decimal constant would be unsigned in ISO C90");
	    }
	}
    }

  if (itk == itk_none)
    /* cpplib has already issued a warning for overflow.  */
    type = ((flags & CPP_N_UNSIGNED)
	    ? widest_unsigned_literal_type_node
	    : widest_integer_literal_type_node);
  else
    type = integer_types[itk];

  if (itk > itk_unsigned_long
      && (flags & CPP_N_WIDTH) != CPP_N_LARGE
      && !in_system_header && !flag_isoc99)
    FUNC9 ("integer constant is too large for %qs type",
	     (flags & CPP_N_UNSIGNED) ? "unsigned long" : "long");

  value = FUNC3 (type, integer.low, integer.high);

  /* Convert imaginary to a complex type.  */
  if (flags & CPP_N_IMAGINARY)
    value = FUNC1 (NULL_TREE, FUNC2 (type, 0), value);

  return value;
}