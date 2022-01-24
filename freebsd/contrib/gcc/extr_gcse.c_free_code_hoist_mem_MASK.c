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

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  antloc ; 
 int /*<<< orphan*/  comp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hoist_exprs ; 
 int /*<<< orphan*/  hoist_vbein ; 
 int /*<<< orphan*/  hoist_vbeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  transp ; 
 int /*<<< orphan*/  transpout ; 

__attribute__((used)) static void
FUNC2 (void)
{
  FUNC1 (antloc);
  FUNC1 (transp);
  FUNC1 (comp);

  FUNC1 (hoist_vbein);
  FUNC1 (hoist_vbeout);
  FUNC1 (hoist_exprs);
  FUNC1 (transpout);

  FUNC0 (CDI_DOMINATORS);
}