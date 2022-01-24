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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

bool
FUNC5 (tree decl)
{
   FUNC4 (FUNC2 (decl) == VAR_DECL 
               || FUNC2 (decl) == FUNCTION_DECL);
   /* Avoid exporting compiler-generated default dtors and copy ctors.
      The only artificial methods that need to be exported are virtual
      and non-virtual thunks.  */
   if (FUNC2 (FUNC3 (decl)) == METHOD_TYPE
       && FUNC0 (decl) && !FUNC1 (decl))
     return false;
   return true;
}