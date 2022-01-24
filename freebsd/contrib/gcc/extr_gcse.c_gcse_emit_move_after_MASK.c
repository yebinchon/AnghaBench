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

/* Variables and functions */
 int /*<<< orphan*/  REG_EQUAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC10 (rtx src, rtx dest, rtx insn)
{
  rtx new;
  rtx set = FUNC9 (insn), set2;
  rtx note;
  rtx eqv;

  /* This should never fail since we're creating a reg->reg copy
     we've verified to be valid.  */

  new = FUNC4 (FUNC6 (dest, src), insn);

  /* Note the equivalence for local CSE pass.  */
  set2 = FUNC9 (new);
  if (!set2 || !FUNC7 (FUNC0 (set2), dest))
    return new;
  if ((note = FUNC5 (insn)))
    eqv = FUNC2 (note, 0);
  else
    eqv = FUNC1 (set);

  FUNC8 (new, REG_EQUAL, FUNC3 (eqv));

  return new;
}