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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_module_statics ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool 
FUNC9 (tree t)
{
  /* If the variable has the "used" attribute, treat it as if it had a
     been touched by the devil.  */
  if (FUNC8 ("used", FUNC0 (t)))
    return false;

  /* Do not want to do anything with volatile except mark any
     function that uses one to be not const or pure.  */
  if (FUNC5 (t)) 
    return false;

  /* Do not care about a local automatic that is not static.  */
  if (!FUNC4 (t) && !FUNC1 (t))
    return false;

  if (FUNC1 (t) || FUNC3 (t))
    return false;

  /* This is a variable we care about.  Check if we have seen it
     before, and if not add it the set of variables we care about.  */
  if (!FUNC7 (all_module_statics, FUNC2 (t)))
    FUNC6 (t);

  return true;
}