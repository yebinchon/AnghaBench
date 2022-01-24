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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  blocks_with_calls ; 
 int /*<<< orphan*/  canon_list_insert ; 
 int /*<<< orphan*/ * canon_modify_mem_list ; 
 int /*<<< orphan*/ * modify_mem_list ; 
 int /*<<< orphan*/  modify_mem_list_set ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC6 (rtx insn)
{
  int bb = FUNC0 (insn);

  /* load_killed_in_block_p will handle the case of calls clobbering
     everything.  */
  modify_mem_list[bb] = FUNC3 (insn, modify_mem_list[bb]);
  FUNC4 (modify_mem_list_set, bb);

  if (FUNC1 (insn))
    {
      /* Note that traversals of this loop (other than for free-ing)
	 will break after encountering a CALL_INSN.  So, there's no
	 need to insert a pair of items, as canon_list_insert does.  */
      canon_modify_mem_list[bb] =
	FUNC3 (insn, canon_modify_mem_list[bb]);
      FUNC4 (blocks_with_calls, bb);
    }
  else
    FUNC5 (FUNC2 (insn), canon_list_insert, (void*) insn);
}