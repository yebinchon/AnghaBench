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
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int DImode ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int HImode ; 
 scalar_t__ NULL_TREE ; 
 int QImode ; 
 int SImode ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int) ; 
 scalar_t__ char_type_node ; 
 scalar_t__ complex_double_type_node ; 
 scalar_t__ complex_float_type_node ; 
 scalar_t__ complex_integer_type_node ; 
 scalar_t__ complex_long_double_type_node ; 
 scalar_t__ dfloat128_type_node ; 
 scalar_t__ dfloat32_type_node ; 
 scalar_t__ dfloat64_type_node ; 
 scalar_t__ double_type_node ; 
 scalar_t__ float_type_node ; 
 scalar_t__ intDI_type_node ; 
 scalar_t__ intHI_type_node ; 
 scalar_t__ intQI_type_node ; 
 scalar_t__ intSI_type_node ; 
 scalar_t__ intTI_type_node ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ long_double_type_node ; 
 scalar_t__ long_integer_type_node ; 
 scalar_t__ long_long_integer_type_node ; 
 scalar_t__ long_long_unsigned_type_node ; 
 scalar_t__ long_unsigned_type_node ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ registered_builtin_types ; 
 scalar_t__ short_integer_type_node ; 
 scalar_t__ short_unsigned_type_node ; 
 scalar_t__ signed_char_type_node ; 
 scalar_t__ unsigned_char_type_node ; 
 scalar_t__ unsigned_intDI_type_node ; 
 scalar_t__ unsigned_intHI_type_node ; 
 scalar_t__ unsigned_intQI_type_node ; 
 scalar_t__ unsigned_intSI_type_node ; 
 scalar_t__ unsigned_intTI_type_node ; 
 scalar_t__ unsigned_type_node ; 
 scalar_t__ void_type_node ; 
 scalar_t__ widest_integer_literal_type_node ; 
 scalar_t__ widest_unsigned_literal_type_node ; 

tree
FUNC12 (enum machine_mode mode, int unsignedp)
{
  tree t;

  if (mode == FUNC5 (integer_type_node))
    return unsignedp ? unsigned_type_node : integer_type_node;

  if (mode == FUNC5 (signed_char_type_node))
    return unsignedp ? unsigned_char_type_node : signed_char_type_node;

  if (mode == FUNC5 (short_integer_type_node))
    return unsignedp ? short_unsigned_type_node : short_integer_type_node;

  if (mode == FUNC5 (long_integer_type_node))
    return unsignedp ? long_unsigned_type_node : long_integer_type_node;

  if (mode == FUNC5 (long_long_integer_type_node))
    return unsignedp ? long_long_unsigned_type_node : long_long_integer_type_node;

  if (mode == FUNC5 (widest_integer_literal_type_node))
    return unsignedp ? widest_unsigned_literal_type_node
		     : widest_integer_literal_type_node;

  if (mode == QImode)
    return unsignedp ? unsigned_intQI_type_node : intQI_type_node;

  if (mode == HImode)
    return unsignedp ? unsigned_intHI_type_node : intHI_type_node;

  if (mode == SImode)
    return unsignedp ? unsigned_intSI_type_node : intSI_type_node;

  if (mode == DImode)
    return unsignedp ? unsigned_intDI_type_node : intDI_type_node;

#if HOST_BITS_PER_WIDE_INT >= 64
  if (mode == TYPE_MODE (intTI_type_node))
    return unsignedp ? unsigned_intTI_type_node : intTI_type_node;
#endif

  if (mode == FUNC5 (float_type_node))
    return float_type_node;

  if (mode == FUNC5 (double_type_node))
    return double_type_node;

  if (mode == FUNC5 (long_double_type_node))
    return long_double_type_node;

  if (mode == FUNC5 (void_type_node))
    return void_type_node;

  if (mode == FUNC5 (FUNC8 (char_type_node)))
    return (unsignedp
	    ? FUNC11 (FUNC2 (mode))
	    : FUNC10 (FUNC2 (mode)));

  if (mode == FUNC5 (FUNC8 (integer_type_node)))
    return (unsignedp
	    ? FUNC11 (FUNC2 (mode))
	    : FUNC10 (FUNC2 (mode)));

  if (FUNC0 (mode))
    {
      enum machine_mode inner_mode;
      tree inner_type;

      if (mode == FUNC5 (complex_float_type_node))
	return complex_float_type_node;
      if (mode == FUNC5 (complex_double_type_node))
	return complex_double_type_node;
      if (mode == FUNC5 (complex_long_double_type_node))
	return complex_long_double_type_node;

      if (mode == FUNC5 (complex_integer_type_node) && !unsignedp)
	return complex_integer_type_node;

      inner_mode = FUNC1 (mode);
      inner_type = FUNC12 (inner_mode, unsignedp);
      if (inner_type != NULL_TREE)
	return FUNC7 (inner_type);
    }
  else if (FUNC6 (mode))
    {
      enum machine_mode inner_mode = FUNC1 (mode);
      tree inner_type = FUNC12 (inner_mode, unsignedp);
      if (inner_type != NULL_TREE)
	return FUNC9 (inner_type, mode);
    }

  if (mode == FUNC5 (dfloat32_type_node))
    return dfloat32_type_node;
  if (mode == FUNC5 (dfloat64_type_node))
    return dfloat64_type_node;
  if (mode == FUNC5 (dfloat128_type_node))
    return dfloat128_type_node;

  for (t = registered_builtin_types; t; t = FUNC3 (t))
    if (FUNC5 (FUNC4 (t)) == mode)
      return FUNC4 (t);

  return 0;
}