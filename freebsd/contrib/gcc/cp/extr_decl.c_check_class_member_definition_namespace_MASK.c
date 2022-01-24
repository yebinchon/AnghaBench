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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  current_namespace ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ processing_explicit_instantiation ; 
 scalar_t__ processing_specialization ; 

__attribute__((used)) static void
FUNC5 (tree decl)
{
  /* These checks only apply to member functions and static data
     members.  */
  FUNC2 (FUNC1 (decl) == FUNCTION_DECL
	      || FUNC1 (decl) == VAR_DECL);
  /* We check for problems with specializations in pt.c in
     check_specialization_namespace, where we can issue better
     diagnostics.  */
  if (processing_specialization)
    return;
  /* There are no restrictions on the placement of
     explicit instantiations.  */
  if (processing_explicit_instantiation)
    return;
  /* [class.mfct]

     A member function definition that appears outside of the
     class definition shall appear in a namespace scope enclosing
     the class definition.

     [class.static.data]

     The definition for a static data member shall appear in a
     namespace scope enclosing the member's class definition.  */
  if (!FUNC3 (current_namespace, FUNC0 (decl)))
    FUNC4 ("definition of %qD is not in namespace enclosing %qT",
	     decl, FUNC0 (decl));
}