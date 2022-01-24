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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 char* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

void
FUNC10 (tree node)
{
  if (node == 0)
    return;

  if (FUNC1 (node))
    FUNC9 ("%qs is unavailable (declared at %s:%d)",
	   FUNC4 (FUNC0 (node)),
	   FUNC2 (node), FUNC3 (node));
  else if (FUNC7 (node))
    {
      const char *what = NULL;
      tree decl = FUNC8 (node);

      if (FUNC5 (FUNC6 (node)) == IDENTIFIER_NODE)
	what = FUNC4 (FUNC6 (node));
      else if (FUNC5 (FUNC6 (node)) == TYPE_DECL
	       && FUNC0 (FUNC6 (node)))
	what = FUNC4 (FUNC0 (FUNC6 (node)));

      if (what)
	{
	  if (decl)
	    FUNC9 ("%qs is unavailable (declared at %s:%d)", what,
		   FUNC2 (decl), FUNC3 (decl));
	  else
	    FUNC9 ("%qs is unavailable", what);
	}
      else if (decl)
	FUNC9 ("type is unavailable (declared at %s:%d)",
	       FUNC2 (decl), FUNC3 (decl));
      else
	FUNC9 ("type is unavailable");
    }
}