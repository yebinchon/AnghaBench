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
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_EOF ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_PRAGMA ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  RID_AT_PACKAGE ; 
 int /*<<< orphan*/  RID_AT_PRIVATE ; 
 int /*<<< orphan*/  RID_AT_PROTECTED ; 
 int /*<<< orphan*/  RID_AT_PUBLIC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  pragma_external ; 

__attribute__((used)) static void
FUNC14 (c_parser *parser)
{
  FUNC9 (FUNC2 (parser, CPP_OPEN_BRACE));
  FUNC1 (parser);
  while (FUNC4 (parser, CPP_EOF))
    {
      tree decls;
      /* Parse any stray semicolon.  */
      if (FUNC2 (parser, CPP_SEMICOLON))
	{
	  if (pedantic)
	    FUNC13 ("extra semicolon in struct or union specified");
	  FUNC1 (parser);
	  continue;
	}
      /* Stop if at the end of the instance variables.  */
      if (FUNC2 (parser, CPP_CLOSE_BRACE))
	{
	  FUNC1 (parser);
	  break;
	}
      /* Parse any objc-visibility-spec.  */
      if (FUNC3 (parser, RID_AT_PRIVATE))
	{
	  FUNC1 (parser);
	  FUNC12 (2);
	  continue;
	}
      else if (FUNC3 (parser, RID_AT_PROTECTED))
	{
	  FUNC1 (parser);
	  FUNC12 (0);
	  continue;
	}
      else if (FUNC3 (parser, RID_AT_PUBLIC))
	{
	  FUNC1 (parser);
	  FUNC12 (1);
	  continue;
	}
      /* APPLE LOCAL begin radar 4564694 */
      else if (FUNC3 (parser, RID_AT_PACKAGE))
	{
	  FUNC1 (parser);
	  FUNC12 (3);
	  continue;
	}
      /* APPLE LOCAL end radar 4564694 */
      else if (FUNC2 (parser, CPP_PRAGMA))
	{
	  FUNC5 (parser, pragma_external);
	  continue;
	}

      /* Parse some comma-separated declarations.  */
      decls = FUNC7 (parser);
      {
	/* Comma-separated instance variables are chained together in
	   reverse order; add them one by one.  */
	tree ivar = FUNC10 (decls);
	for (; ivar; ivar = FUNC0 (ivar))
	  FUNC11 (FUNC8 (ivar));
      }
      FUNC6 (parser, CPP_SEMICOLON, "expected %<;%>");
    }
}