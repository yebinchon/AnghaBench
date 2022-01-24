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
 int /*<<< orphan*/  OPT_Wpragmas ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  pending_redefine_extname ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

void
FUNC4 (tree oldname, tree newname)
{
  tree previous = FUNC1 (oldname, pending_redefine_extname);
  if (previous)
    {
      if (FUNC0 (previous) != newname)
	FUNC3 (OPT_Wpragmas, "#pragma redefine_extname ignored due to "
		 "conflict with previous #pragma redefine_extname");
      return;
    }

  pending_redefine_extname
    = FUNC2 (oldname, newname, pending_redefine_extname);
}