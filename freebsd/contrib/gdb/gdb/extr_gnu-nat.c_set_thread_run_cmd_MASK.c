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
struct proc {int run_sc; } ;

/* Variables and functions */
 struct proc* FUNC0 () ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  struct proc *thread = FUNC0 ();
  thread->run_sc = FUNC1 (args, "set thread run") ? 0 : 1;
}