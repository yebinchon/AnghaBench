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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ DCmode ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ DFmode ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ INTEGER_TYPE ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ VECTOR_TYPE ; 
 scalar_t__ XCmode ; 

int
FUNC10 (tree type, int align)
{
  /* x86-64 ABI requires arrays greater than 16 bytes to be aligned
     to 16byte boundary.  */
  if (TARGET_64BIT)
    {
      if (FUNC0 (type)
	   && FUNC9 (type)
	   && FUNC3 (FUNC9 (type)) == INTEGER_CST
	   && (FUNC5 (FUNC9 (type)) >= 128
	       || FUNC4 (FUNC9 (type))) && align < 128)
	return 128;
    }
  if (FUNC3 (type) == ARRAY_TYPE)
    {
      if (FUNC8 (FUNC6 (type)) == DFmode && align < 64)
	return 64;
      if (FUNC1 (FUNC8 (FUNC6 (type))) && align < 128)
	return 128;
    }
  else if (FUNC3 (type) == COMPLEX_TYPE)
    {
      if (FUNC8 (type) == DCmode && align < 64)
	return 64;
      if (FUNC8 (type) == XCmode && align < 128)
	return 128;
    }
  else if ((FUNC3 (type) == RECORD_TYPE
	    || FUNC3 (type) == UNION_TYPE
	    || FUNC3 (type) == QUAL_UNION_TYPE)
	   && FUNC7 (type))
    {
      if (FUNC2 (FUNC7 (type)) == DFmode && align < 64)
	return 64;
      if (FUNC1 (FUNC2 (FUNC7 (type))) && align < 128)
	return 128;
    }
  else if (FUNC3 (type) == REAL_TYPE || FUNC3 (type) == VECTOR_TYPE
	   || FUNC3 (type) == INTEGER_TYPE)
    {

      if (FUNC8 (type) == DFmode && align < 64)
	return 64;
      if (FUNC1 (FUNC8 (type)) && align < 128)
	return 128;
    }
  return align;
}