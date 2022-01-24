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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum block_op_methods { ____Placeholder_block_op_methods } block_op_methods ;

/* Variables and functions */
 int /*<<< orphan*/  BLKmode ; 
#define  BLOCK_OP_CALL_PARM 131 
#define  BLOCK_OP_NORMAL 130 
#define  BLOCK_OP_NO_LIBCALL 129 
#define  BLOCK_OP_TAILCALL 128 
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  NO_DEFER_POP ; 
 int /*<<< orphan*/  OK_DEFER_POP ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

rtx
FUNC16 (rtx x, rtx y, rtx size, enum block_op_methods method)
{
  bool may_use_call;
  rtx retval = 0;
  unsigned int align;

  switch (method)
    {
    case BLOCK_OP_NORMAL:
    case BLOCK_OP_TAILCALL:
      may_use_call = true;
      break;

    case BLOCK_OP_CALL_PARM:
      may_use_call = FUNC7 ();

      /* Make inhibit_defer_pop nonzero around the library call
	 to force it to pop the arguments right away.  */
      NO_DEFER_POP;
      break;

    case BLOCK_OP_NO_LIBCALL:
      may_use_call = false;
      break;

    default:
      FUNC12 ();
    }

  align = FUNC4 (FUNC2 (x), FUNC2 (y));

  FUNC11 (FUNC3 (x));
  FUNC11 (FUNC3 (y));
  FUNC11 (size);

  /* Make sure we've got BLKmode addresses; store_one_arg can decide that
     block copy is more efficient for other large modes, e.g. DCmode.  */
  x = FUNC6 (x, BLKmode, 0);
  y = FUNC6 (y, BLKmode, 0);

  /* Set MEM_SIZE as appropriate for this block copy.  The main place this
     can be incorrect is coming from __builtin_memcpy.  */
  if (FUNC0 (size) == CONST_INT)
    {
      if (FUNC1 (size) == 0)
	return 0;

      x = FUNC15 (x);
      y = FUNC15 (y);
      FUNC14 (x, size);
      FUNC14 (y, size);
    }

  if (FUNC0 (size) == CONST_INT && FUNC5 (FUNC1 (size), align))
    FUNC13 (x, y, FUNC1 (size), align, 0);
  else if (FUNC10 (x, y, size, align))
    ;
  else if (may_use_call)
    retval = FUNC8 (x, y, size,
					  method == BLOCK_OP_TAILCALL);
  else
    FUNC9 (x, y, size, align);

  if (method == BLOCK_OP_CALL_PARM)
    OK_DEFER_POP;

  return retval;
}