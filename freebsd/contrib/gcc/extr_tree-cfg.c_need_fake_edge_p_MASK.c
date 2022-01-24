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

/* Variables and functions */
 scalar_t__ ASM_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int ECF_NORETURN ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (tree t)
{
  tree call;

  /* NORETURN and LONGJMP calls already have an edge to exit.
     CONST and PURE calls do not need one.
     We don't currently check for CONST and PURE here, although
     it would be a good idea, because those attributes are
     figured out from the RTL in mark_constant_function, and
     the counter incrementation code from -fprofile-arcs
     leads to different results from -fbranch-probabilities.  */
  call = FUNC4 (t);
  if (call
      && !(FUNC3 (call) & ECF_NORETURN))
    return true;

  if (FUNC2 (t) == ASM_EXPR
       && (FUNC1 (t) || FUNC0 (t)))
    return true;

  return false;
}