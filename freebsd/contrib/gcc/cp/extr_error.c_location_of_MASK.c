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
typedef  int /*<<< orphan*/  location_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static location_t
FUNC6 (tree t)
{
  if (FUNC3 (t) == PARM_DECL && FUNC0 (t))
    t = FUNC0 (t);
  else if (FUNC5 (t))
    t = FUNC4 (t);
  else if (FUNC3 (t) == OVERLOAD)
    t = FUNC2 (t);

  return FUNC1 (t);
}