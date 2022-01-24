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
struct z_candidate {int /*<<< orphan*/ * second_conv; } ;
typedef  int /*<<< orphan*/  conversion ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int LOOKUP_NO_CONVERSION ; 
 int /*<<< orphan*/  LOOKUP_ONLYCONVERTING ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct z_candidate* FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 

__attribute__((used)) static conversion *
FUNC5 (tree to, tree from, tree expr, bool c_cast_p,
		     int flags)
{
  conversion *conv;

  if (from == error_mark_node || to == error_mark_node
      || expr == error_mark_node)
    return NULL;

  if (FUNC1 (to) == REFERENCE_TYPE)
    conv = FUNC3 (to, from, expr, c_cast_p, flags);
  else
    conv = FUNC4 (to, from, expr, c_cast_p, flags);

  if (conv)
    return conv;

  if (expr != NULL_TREE
      && (FUNC0 (from)
	  || FUNC0 (to))
      && (flags & LOOKUP_NO_CONVERSION) == 0)
    {
      struct z_candidate *cand;

      cand = FUNC2
	(to, expr, LOOKUP_ONLYCONVERTING);
      if (cand)
	conv = cand->second_conv;

      /* We used to try to bind a reference to a temporary here, but that
	 is now handled by the recursive call to this function at the end
	 of reference_binding.  */
      return conv;
    }

  return NULL;
}