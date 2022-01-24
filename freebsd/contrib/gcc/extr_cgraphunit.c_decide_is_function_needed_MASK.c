#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {int externally_visible; int /*<<< orphan*/  inlinable; int /*<<< orphan*/  disregard_inline_limits; } ;
struct cgraph_node {TYPE_1__ local; int /*<<< orphan*/  origin; scalar_t__ needed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct cgraph_node*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ flag_unit_at_a_time ; 
 int /*<<< orphan*/  flag_whole_program ; 
 scalar_t__ FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optimize ; 

__attribute__((used)) static bool
FUNC16 (struct cgraph_node *node, tree decl)
{
  tree origin;
  if (FUNC10 (FUNC7 (decl))
      && FUNC11 (decl))
    {
      node->local.externally_visible = true;
      return true;
    }

  /* If the user told us it is used, then it must be so.  */
  if (node->local.externally_visible)
    return true;

  if (!flag_unit_at_a_time && FUNC15 ("used", FUNC2 (decl)))
    return true;

  /* ??? If the assembler name is set by hand, it is possible to assemble
     the name later after finalizing the function and the fact is noticed
     in assemble_name then.  This is arguably a bug.  */
  if (FUNC1 (decl)
      && FUNC12 (FUNC0 (decl)))
    return true;

  /* If we decided it was needed before, but at the time we didn't have
     the body of the function available, then it's still needed.  We have
     to go back and re-check its dependencies now.  */
  if (node->needed)
    return true;

  /* Externally visible functions must be output.  The exception is
     COMDAT functions that must be output only when they are needed.

     When not optimizing, also output the static functions. (see
     PR24561), but don't do so for always_inline functions, functions
     declared inline and nested functions.  These was optimized out
     in the original implementation and it is unclear whether we want
     to change the behavior here.  */
  if (((FUNC11 (decl)
	|| (!optimize && !node->local.disregard_inline_limits
	    && !FUNC4 (decl)
	    && !node->origin))
      && !flag_whole_program)
      && !FUNC3 (decl) && !FUNC5 (decl))
    return true;

  /* Constructors and destructors are reachable from the runtime by
     some mechanism.  */
  if (FUNC8 (decl) || FUNC9 (decl))
    return true;

  if (flag_unit_at_a_time)
    return false;

  /* If not doing unit at a time, then we'll only defer this function
     if its marked for inlining.  Otherwise we want to emit it now.  */

  /* "extern inline" functions are never output locally.  */
  if (FUNC5 (decl))
    return false;
  /* Nested functions of extern inline function shall not be emit unless
     we inlined the origin.  */
  for (origin = FUNC14 (decl); origin;
       origin = FUNC14 (origin))
    if (FUNC5 (origin))
      return false;
  /* We want to emit COMDAT functions only when absolutely necessary.  */
  if (FUNC3 (decl))
    return false;
  if (!FUNC6 (decl)
      || (!node->local.disregard_inline_limits
	  /* When declared inline, defer even the uninlinable functions.
	     This allows them to be eliminated when unused.  */
	  && !FUNC4 (decl)
	  && (!node->local.inlinable || !FUNC13 (node, NULL))))
    return true;

  return false;
}