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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

void
FUNC6 (tree decl, tree name)
{
  if (!FUNC1 (decl))
    {
      FUNC3 (decl, name);
      return;
    }
  if (name == FUNC0 (decl))
    return;

  if (FUNC4 (FUNC0 (decl))
      && FUNC2 (decl))
    FUNC5 (0, "%D renamed after being referenced in assembly", decl);

  FUNC3 (decl, name);
}