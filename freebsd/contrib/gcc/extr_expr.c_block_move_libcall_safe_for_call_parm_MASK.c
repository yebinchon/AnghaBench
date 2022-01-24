#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* arg_partial_bytes ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;
typedef  int /*<<< orphan*/  CUMULATIVE_ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ PUSH_ARGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 TYPE_2__ targetm ; 
 scalar_t__ void_list_node ; 

__attribute__((used)) static bool
FUNC12 (void)
{
  /* If arguments are pushed on the stack, then they're safe.  */
  if (PUSH_ARGS)
    return true;

  /* If registers go on the stack anyway, any argument is sure to clobber
     an outgoing argument.  */
#if defined (REG_PARM_STACK_SPACE) && defined (OUTGOING_REG_PARM_STACK_SPACE)
  {
    tree fn = emit_block_move_libcall_fn (false);
    (void) fn;
    if (REG_PARM_STACK_SPACE (fn) != 0)
      return false;
  }
#endif

  /* If any argument goes in memory, then it might clobber an outgoing
     argument.  */
  {
    CUMULATIVE_ARGS args_so_far;
    tree fn, arg;

    fn = FUNC10 (false);
    FUNC2 (args_so_far, FUNC6 (fn), NULL_RTX, 0, 3);

    arg = FUNC8 (FUNC6 (fn));
    for ( ; arg != void_list_node ; arg = FUNC5 (arg))
      {
	enum machine_mode mode = FUNC9 (FUNC7 (arg));
	rtx tmp = FUNC0 (args_so_far, mode, NULL_TREE, 1);
	if (!tmp || !FUNC3 (tmp))
	  return false;
	if (targetm.calls.arg_partial_bytes (&args_so_far, mode, NULL, 1))
	  return false;
	FUNC1 (args_so_far, mode, NULL_TREE, 1);
      }
  }
  return true;
}