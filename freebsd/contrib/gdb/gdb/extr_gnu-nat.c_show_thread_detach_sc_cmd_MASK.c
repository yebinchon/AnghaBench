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
struct proc {int /*<<< orphan*/  detach_sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct proc* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  struct proc *thread = FUNC1 ();
  FUNC0 (args, "show thread detach-suspend-count");
  FUNC2 ("Thread %s will be left with a suspend count"
		     " of %d when detaching.\n",
		     FUNC3 (thread),
		     thread->detach_sc);
}