#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct loops {TYPE_1__* tree_root; } ;
struct loop {struct loop* next; } ;
struct TYPE_2__ {struct loop* inner; } ;

/* Variables and functions */
 unsigned int TODO_cleanup_cfg ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct loop*,int*) ; 

unsigned int
FUNC2 (struct loops *loops)
{
  bool changed = false;
  struct loop *loop;

  for (loop = loops->tree_root->inner; loop; loop = loop->next)
    FUNC1 (loop, &changed);

  if (changed)
    {
      FUNC0 ();
      return TODO_cleanup_cfg;
    }
  return 0;
}