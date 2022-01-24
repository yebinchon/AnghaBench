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
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_AT_CLASS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11 (c_parser *parser)
{
  tree list = NULL_TREE;
  FUNC9 (FUNC4 (parser, RID_AT_CLASS));
  FUNC1 (parser);
  /* Any identifiers, including those declared as type names, are OK
     here.  */
  while (true)
    {
      tree id;
      if (FUNC5 (parser, CPP_NAME))
	{
	  FUNC2 (parser, "expected identifier");
	  break;
	}
      id = FUNC6 (parser)->value;
      list = FUNC8 (list, FUNC0 (NULL_TREE, id));
      FUNC1 (parser);
      if (FUNC3 (parser, CPP_COMMA))
	FUNC1 (parser);
      else
	break;
    }
  FUNC7 (parser, CPP_SEMICOLON, "expected %<;%>");
  FUNC10 (list);
}