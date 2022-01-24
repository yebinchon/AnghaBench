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
 scalar_t__ CONST_INT ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ PLUS ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

__attribute__((used)) static void
FUNC12 (rtx dead_insn, rtx current_insn)
{
  rtx set = FUNC11 (dead_insn);
  rtx set2, dst, prev, next;
  if (set)
    {
      rtx dst = FUNC5 (set);
      if (FUNC2 (dst))
	FUNC8 (dead_insn, FUNC7 (dst, 0), current_insn);
    }
  /* If we deleted the store from a reloaded post_{in,de}c expression,
     we can delete the matching adds.  */
  prev = FUNC4 (dead_insn);
  next = FUNC3 (dead_insn);
  if (! prev || ! next)
    return;
  set = FUNC11 (next);
  set2 = FUNC11 (prev);
  if (! set || ! set2
      || FUNC0 (FUNC6 (set)) != PLUS || FUNC0 (FUNC6 (set2)) != PLUS
      || FUNC0 (FUNC7 (FUNC6 (set), 1)) != CONST_INT
      || FUNC0 (FUNC7 (FUNC6 (set2), 1)) != CONST_INT)
    return;
  dst = FUNC5 (set);
  if (! FUNC10 (dst, FUNC5 (set2))
      || ! FUNC10 (dst, FUNC7 (FUNC6 (set), 0))
      || ! FUNC10 (dst, FUNC7 (FUNC6 (set2), 0))
      || (FUNC1 (FUNC7 (FUNC6 (set), 1))
	  != -FUNC1 (FUNC7 (FUNC6 (set2), 1))))
    return;
  FUNC9 (prev);
  FUNC9 (next);
}