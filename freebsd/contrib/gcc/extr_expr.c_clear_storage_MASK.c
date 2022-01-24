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
typedef  int /*<<< orphan*/ * rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  enum block_op_methods { ____Placeholder_block_op_methods } block_op_methods ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int BLKmode ; 
 int BLOCK_OP_NORMAL ; 
 int BLOCK_OP_TAILCALL ; 
 scalar_t__ FUNC0 (scalar_t__,unsigned int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * const0_rtx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

rtx
FUNC15 (rtx object, rtx size, enum block_op_methods method)
{
  enum machine_mode mode = FUNC4 (object);
  unsigned int align;

  FUNC12 (method == BLOCK_OP_NORMAL || method == BLOCK_OP_TAILCALL);

  /* If OBJECT is not BLKmode and SIZE is the same size as its mode,
     just move a zero.  Otherwise, do this a piece at a time.  */
  if (mode != BLKmode
      && FUNC3 (size) == CONST_INT
      && FUNC7 (size) == (HOST_WIDE_INT) FUNC6 (mode))
    {
      rtx zero = FUNC2 (mode);
      if (zero != NULL)
	{
	  FUNC11 (object, zero);
	  return NULL;
	}

      if (FUNC1 (mode))
	{
	  zero = FUNC2 (FUNC5 (mode));
	  if (zero != NULL)
	    {
	      FUNC14 (object, zero, 0);
	      FUNC14 (object, zero, 1);
	      return NULL;
	    }
	}
    }

  if (size == const0_rtx)
    return NULL;

  align = FUNC8 (object);

  if (FUNC3 (size) == CONST_INT
      && FUNC0 (FUNC7 (size), align))
    FUNC9 (object, FUNC7 (size), align);
  else if (FUNC13 (object, size, const0_rtx, align))
    ;
  else
    return FUNC10 (object, size,
				      method == BLOCK_OP_TAILCALL);

  return NULL;
}