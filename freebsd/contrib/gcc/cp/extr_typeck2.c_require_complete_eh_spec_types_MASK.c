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
typedef  char* tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

void
FUNC6 (tree fntype, tree decl)
{
  tree raises;
  /* Don't complain about calls to op new.  */
  if (decl && FUNC1 (decl))
    return;
  for (raises = FUNC4 (fntype); raises;
       raises = FUNC2 (raises))
    {
      tree type = FUNC3 (raises);
      if (type && !FUNC0 (type))
	{
	  if (decl)
	    FUNC5
	      ("call to function %qD which throws incomplete type %q#T",
	       decl, type);
	  else
	    FUNC5 ("call to function which throws incomplete type %q#T",
		   decl);
	}
    }
}