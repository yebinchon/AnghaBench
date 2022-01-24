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
struct proc {int dummy; } ;
struct inf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inf* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct proc* FUNC3 (struct inf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_ptid ; 

__attribute__((used)) static struct proc *
FUNC4 (void)
{
  struct inf *inf = FUNC1 ();
  struct proc *thread = FUNC3 (inf, FUNC0 (inferior_ptid));
  if (!thread)
    FUNC2 ("No current thread.");
  return thread;
}