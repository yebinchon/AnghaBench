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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ LABEL_DECL ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ RESULT_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 

int
FUNC4 (tree var, tree fn)
{
  return (FUNC1 (var) && FUNC0 (var) == fn
	  && (((FUNC2 (var) == VAR_DECL || FUNC2 (var) == PARM_DECL)
	       && ! FUNC3 (var))
	      || FUNC2 (var) == LABEL_DECL
	      || FUNC2 (var) == RESULT_DECL));
}