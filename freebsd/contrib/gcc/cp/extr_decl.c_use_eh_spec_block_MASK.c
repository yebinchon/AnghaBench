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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_enforce_eh_specs ; 
 scalar_t__ flag_exceptions ; 
 int /*<<< orphan*/  processing_template_decl ; 

__attribute__((used)) static bool
FUNC4 (tree fn)
{
  return (flag_exceptions && flag_enforce_eh_specs
	  && !processing_template_decl
	  && FUNC3 (FUNC2 (fn))
	  /* We insert the EH_SPEC_BLOCK only in the original
	     function; then, it is copied automatically to the
	     clones.  */
	  && !FUNC1 (fn)
	  /* Implicitly-generated constructors and destructors have
	     exception specifications.  However, those specifications
	     are the union of the possible exceptions specified by the
	     constructors/destructors for bases and members, so no
	     unallowed exception will ever reach this function.  By
	     not creating the EH_SPEC_BLOCK we save a little memory,
	     and we avoid spurious warnings about unreachable
	     code.  */
	  && !FUNC0 (fn));
}