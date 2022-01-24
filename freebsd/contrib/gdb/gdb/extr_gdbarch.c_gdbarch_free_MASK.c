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
struct obstack {int dummy; } ;
struct gdbarch {struct obstack* obstack; int /*<<< orphan*/  initialized_p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct obstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct obstack*) ; 

void
FUNC3 (struct gdbarch *arch)
{
  struct obstack *obstack;
  FUNC0 (arch != NULL);
  FUNC0 (!arch->initialized_p);
  obstack = arch->obstack;
  FUNC1 (obstack, 0); /* Includes the ARCH.  */
  FUNC2 (obstack);
}