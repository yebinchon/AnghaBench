#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ expanded_location ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  OPT_Wdeprecated_declarations ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_1__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  warn_deprecated_decl ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 

void
FUNC10 (tree node)
{
  if (node == 0 || !warn_deprecated_decl)
    return;

  if (FUNC1 (node))
    {
      expanded_location xloc = FUNC8 (FUNC2 (node));
      FUNC9 (OPT_Wdeprecated_declarations,
	       "%qs is deprecated (declared at %s:%d)",
	       FUNC3 (FUNC0 (node)),
	       xloc.file, xloc.line);
    }
  else if (FUNC6 (node))
    {
      const char *what = NULL;
      tree decl = FUNC7 (node);

      if (FUNC5 (node))
	{
	  if (FUNC4 (FUNC5 (node)) == IDENTIFIER_NODE)
	    what = FUNC3 (FUNC5 (node));
	  else if (FUNC4 (FUNC5 (node)) == TYPE_DECL
		   && FUNC0 (FUNC5 (node)))
	    what = FUNC3 (FUNC0 (FUNC5 (node)));
	}

      if (decl)
	{
	  expanded_location xloc
	    = FUNC8 (FUNC2 (decl));
	  if (what)
	    FUNC9 (OPT_Wdeprecated_declarations,
		     "%qs is deprecated (declared at %s:%d)", what,
		     xloc.file, xloc.line);
	  else
	    FUNC9 (OPT_Wdeprecated_declarations,
		     "type is deprecated (declared at %s:%d)",
		     xloc.file, xloc.line);
	}
      else
	{
	  if (what)
	    FUNC9 (OPT_Wdeprecated_declarations, "%qs is deprecated", what);
	  else
	    FUNC9 (OPT_Wdeprecated_declarations, "type is deprecated");
	}
    }
}