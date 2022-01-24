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
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  processing_template_decl ; 

tree
FUNC4 (tree templates)
{
  tree fn, champ;

  ++processing_template_decl;

  champ = templates;
  for (fn = FUNC1 (templates); fn; fn = FUNC1 (fn))
    {
      int fate = 0;

      if (FUNC3 (FUNC2 (champ),
			FUNC0 (FUNC2 (fn)),
			NULL_TREE, /*check_ret=*/false))
	fate--;

      if (FUNC3 (FUNC2 (fn),
			FUNC0 (FUNC2 (champ)),
			NULL_TREE, /*check_ret=*/false))
	fate++;

      if (fate == -1)
	champ = fn;
      else if (!fate)
	{
	  /* Equally specialized, move to next function.  If there
	     is no next function, nothing's most specialized.  */
	  fn = FUNC1 (fn);
	  champ = fn;
	  if (!fn)
	    break;
	}
    }

  if (champ)
    /* Now verify that champ is better than everything earlier in the
       instantiation list.  */
    for (fn = templates; fn != champ; fn = FUNC1 (fn))
      if (FUNC3 (FUNC2 (champ),
			FUNC0 (FUNC2 (fn)),
			NULL_TREE, /*check_ret=*/false)
	  || !FUNC3 (FUNC2 (fn),
			    FUNC0 (FUNC2 (champ)),
			    NULL_TREE, /*check_ret=*/false))
	{
	  champ = NULL_TREE;
	  break;
	}

  processing_template_decl--;

  if (!champ)
    return error_mark_node;

  return champ;
}