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
struct iv_to_split {scalar_t__ base_var; scalar_t__ step; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MULT ; 
 int /*<<< orphan*/  PLUS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (unsigned int,int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__* FUNC13 (scalar_t__,struct iv_to_split*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18 (struct iv_to_split *ivts, rtx insn, unsigned delta)
{
  rtx expr, *loc, seq, incr, var;
  enum machine_mode mode = FUNC0 (ivts->base_var);
  rtx src, dest, set;

  /* Construct base + DELTA * step.  */
  if (!delta)
    expr = ivts->base_var;
  else
    {
      incr = FUNC14 (MULT, mode,
				  ivts->step, FUNC10 (delta, mode));
      expr = FUNC14 (PLUS, FUNC0 (ivts->base_var),
				  ivts->base_var, incr);
    }

  /* Figure out where to do the replacement.  */
  loc = FUNC13 (FUNC15 (insn), ivts);

  /* If we can make the replacement right away, we're done.  */
  if (FUNC17 (insn, loc, expr, 0))
    return;

  /* Otherwise, force EXPR into a register and try again.  */
  FUNC16 ();
  var = FUNC11 (mode);
  expr = FUNC8 (expr, var);
  if (expr != var)
    FUNC6 (var, expr);
  seq = FUNC12 ();
  FUNC7 ();
  FUNC5 (seq, insn);
      
  if (FUNC17 (insn, loc, var, 0))
    return;

  /* The last chance.  Try recreating the assignment in insn
     completely from scratch.  */
  set = FUNC15 (insn);
  FUNC9 (set);

  FUNC16 ();
  *loc = var;
  src = FUNC3 (FUNC2 (set));
  dest = FUNC3 (FUNC1 (set));
  src = FUNC8 (src, dest);
  if (src != dest)
    FUNC6 (dest, src);
  seq = FUNC12 ();
  FUNC7 ();
     
  FUNC5 (seq, insn);
  FUNC4 (insn);
}