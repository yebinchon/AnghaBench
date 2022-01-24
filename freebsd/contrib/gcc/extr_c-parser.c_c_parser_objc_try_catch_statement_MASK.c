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
typedef  int /*<<< orphan*/  tree ;
struct c_parm {int dummy; } ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  location; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_ELLIPSIS ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_AT_CATCH ; 
 int /*<<< orphan*/  RID_AT_FINALLY ; 
 int /*<<< orphan*/  RID_AT_TRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct c_parm* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct c_parm*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static void
FUNC16 (c_parser *parser)
{
  location_t loc;
  tree stmt;
  FUNC9 (FUNC4 (parser, RID_AT_TRY));
  FUNC2 (parser);
  loc = FUNC6 (parser)->location;
  stmt = FUNC0 (parser);
  FUNC12 (loc, stmt);
  while (FUNC4 (parser, RID_AT_CATCH))
    {
      struct c_parm *parm;
      FUNC2 (parser);
      if (!FUNC7 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
	break;
      /* APPLE LOCAL begin radar 2848255 */
      if (FUNC3 (parser, CPP_ELLIPSIS))
	{
	  /* @catch (...) */
	  FUNC2 (parser);
	   FUNC8 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
	   FUNC11 (NULL_TREE);
	}
      else
	{
	   parm = FUNC5 (parser, NULL_TREE);
	   if (parm == NULL)
	    {
	      FUNC8 (parser, CPP_CLOSE_PAREN, NULL);
	      break;
	    }
	   FUNC8 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
	   FUNC11 (FUNC10 (parm));
	}
      /* APPLE LOCAL end radar 2848255 */
      if (FUNC7 (parser, CPP_OPEN_BRACE, "expected %<{%>"))
	FUNC1 (parser);
      FUNC14 ();
    }
  if (FUNC4 (parser, RID_AT_FINALLY))
    {
      location_t finloc;
      tree finstmt;
      FUNC2 (parser);
      finloc = FUNC6 (parser)->location;
      finstmt = FUNC0 (parser);
      FUNC13 (finloc, finstmt);
    }
  FUNC15 ();
}