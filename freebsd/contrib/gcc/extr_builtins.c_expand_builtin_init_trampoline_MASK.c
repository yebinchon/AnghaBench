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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int /*<<< orphan*/  BLKmode ; 
 int /*<<< orphan*/  BLOCK_OP_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  TRAMPOLINE_ALIGNMENT ; 
 int /*<<< orphan*/  TRAMPOLINE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int trampolines_created ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC11 (tree arglist)
{
  tree t_tramp, t_func, t_chain;
  rtx r_tramp, r_func, r_chain;
#ifdef TRAMPOLINE_TEMPLATE
  rtx blktramp;
#endif

  if (!FUNC10 (arglist, POINTER_TYPE, POINTER_TYPE,
			 POINTER_TYPE, VOID_TYPE))
    return NULL_RTX;

  t_tramp = FUNC3 (arglist);
  arglist = FUNC2 (arglist);
  t_func = FUNC3 (arglist);
  arglist = FUNC2 (arglist);
  t_chain = FUNC3 (arglist);

  r_tramp = FUNC6 (t_tramp);
  r_func = FUNC6 (t_func);
  r_chain = FUNC6 (t_chain);

  /* Generate insns to initialize the trampoline.  */
  r_tramp = FUNC8 (r_tramp);
#ifdef TRAMPOLINE_TEMPLATE
  blktramp = gen_rtx_MEM (BLKmode, r_tramp);
  set_mem_align (blktramp, TRAMPOLINE_ALIGNMENT);
  emit_block_move (blktramp, assemble_trampoline_template (),
		   GEN_INT (TRAMPOLINE_SIZE), BLOCK_OP_NORMAL);
#endif
  trampolines_created = 1;
  FUNC1 (r_tramp, r_func, r_chain);

  return const0_rtx;
}