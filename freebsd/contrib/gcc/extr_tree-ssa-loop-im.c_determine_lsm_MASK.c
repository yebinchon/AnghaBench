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
struct loops {struct loop* tree_root; } ;
struct loop {struct loop* next; struct loop* outer; struct loop* inner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct loop*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2 (struct loops *loops)
{
  struct loop *loop;

  if (!loops->tree_root->inner)
    return;

  /* Pass the loops from the outermost and perform the store motion as
     suitable.  */

  loop = loops->tree_root->inner;
  while (1)
    {
      FUNC0 (loop);

      if (loop->inner)
	{
	  loop = loop->inner;
	  continue;
	}
      while (!loop->next)
	{
	  loop = loop->outer;
	  if (loop == loops->tree_root)
	    {
	      FUNC1 ();
	      return;
	    }
	}
      loop = loop->next;
    }
}