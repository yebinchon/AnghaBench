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
struct loops {unsigned int num; scalar_t__* parray; struct loop* tree_root; } ;
struct loop {struct loop* outer; struct loop* inner; struct loop* next; } ;

/* Variables and functions */
 int DF_EQUIV_NOTES ; 
 int DF_HARD_REGS ; 
 int /*<<< orphan*/  DF_UD_CHAIN ; 
 int /*<<< orphan*/ * df ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6 (struct loops *loops)
{
  struct loop *loop;
  unsigned i;

  df = FUNC2 (DF_HARD_REGS | DF_EQUIV_NOTES);
  FUNC0 (df, DF_UD_CHAIN);
 
  /* Process the loops, innermost first.  */
  loop = loops->tree_root;
  while (loop->inner)
    loop = loop->inner;

  while (loop != loops->tree_root)
    {
      FUNC4 (loop);

      if (loop->next)
	{
	  loop = loop->next;
	  while (loop->inner)
	    loop = loop->inner;
	}
      else
	loop = loop->outer;
    }

  for (i = 1; i < loops->num; i++)
    if (loops->parray[i])
      FUNC3 (loops->parray[i]);

  FUNC1 (df);
  df = NULL;

#ifdef ENABLE_CHECKING
  verify_flow_info ();
#endif
}