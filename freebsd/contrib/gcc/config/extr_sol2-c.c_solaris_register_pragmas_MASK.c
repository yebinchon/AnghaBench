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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  solaris_pragma_align ; 
 int /*<<< orphan*/  solaris_pragma_fini ; 
 int /*<<< orphan*/  solaris_pragma_init ; 

void
FUNC2 (void)
{
  FUNC1 (0, "align", solaris_pragma_align);
  FUNC0 (0, "init", solaris_pragma_init);
  FUNC0 (0, "fini", solaris_pragma_fini);
}