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
struct loop {struct loop* next; struct loop* inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 (struct loop*) ; 

__attribute__((used)) static bool
FUNC2 (struct loop *loop, bool *changed)
{
  bool nonempty_subloop = false;
  struct loop *sub;

  /* First, all subloops must be removed.  */
  for (sub = loop->inner; sub; sub = sub->next)
    nonempty_subloop |= !FUNC2 (sub, changed);

  if (nonempty_subloop || !FUNC0 (loop))
    return false;

  FUNC1 (loop);
  *changed = true;
  return true;
}