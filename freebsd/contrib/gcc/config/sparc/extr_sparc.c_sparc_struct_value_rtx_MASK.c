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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  EQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 int STRUCT_VALUE_OFFSET ; 
 scalar_t__ TARGET_ARCH64 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frame_pointer_rtx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sparc_std_struct_return ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 
 int /*<<< orphan*/  struct_value_alias_set ; 

__attribute__((used)) static rtx
FUNC19 (tree fndecl, int incoming)
{
  if (TARGET_ARCH64)
    return 0;
  else
    {
      rtx mem;

      if (incoming)
	mem = FUNC14 (Pmode, FUNC17 (frame_pointer_rtx,
						 STRUCT_VALUE_OFFSET));
      else
	mem = FUNC14 (Pmode, FUNC17 (stack_pointer_rtx,
						 STRUCT_VALUE_OFFSET));

      /* Only follow the SPARC ABI for fixed-size structure returns. 
         Variable size structure returns are handled per the normal 
         procedures in GCC. This is enabled by -mstd-struct-return */
      if (incoming == 2 
	  && sparc_std_struct_return
	  && FUNC4 (FUNC3 (fndecl))
	  && FUNC1 (FUNC4 (FUNC3 (fndecl))) == INTEGER_CST)
	{
	  /* We must check and adjust the return address, as it is
	     optional as to whether the return object is really
	     provided.  */
	  rtx ret_rtx = FUNC15 (Pmode, 31);
	  rtx scratch = FUNC13 (SImode);
	  rtx endlab = FUNC12 (); 

	  /* Calculate the return object size */
	  tree size = FUNC4 (FUNC3 (fndecl));
	  rtx size_rtx = FUNC0 (FUNC2 (size) & 0xfff);
	  /* Construct a temporary return value */
	  rtx temp_val = FUNC6 (Pmode, FUNC2 (size), 0);

	  /* Implement SPARC 32-bit psABI callee returns struck checking
	     requirements: 
	    
	      Fetch the instruction where we will return to and see if
	     it's an unimp instruction (the most significant 10 bits
	     will be zero).  */
	  FUNC10 (scratch, FUNC14 (SImode,
						FUNC17 (ret_rtx, 8)));
	  /* Assume the size is valid and pre-adjust */
	  FUNC8 (FUNC11 (ret_rtx, ret_rtx, FUNC0 (4)));
	  FUNC7 (scratch, size_rtx, EQ, const0_rtx, SImode, 0, endlab);
	  FUNC8 (FUNC16 (ret_rtx, ret_rtx, FUNC0 (4)));
	  /* Assign stack temp: 
	     Write the address of the memory pointed to by temp_val into
	     the memory pointed to by mem */
	  FUNC10 (mem, FUNC5 (temp_val, 0));
	  FUNC9 (endlab);
	}

      FUNC18 (mem, struct_value_alias_set);
      return mem;
    }
}