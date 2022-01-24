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
 int /*<<< orphan*/  CPP_GREATER ; 
 int /*<<< orphan*/  CPP_LESS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC9 (c_parser *parser)
{
  tree list = NULL_TREE;
  FUNC8 (FUNC3 (parser, CPP_LESS));
  FUNC1 (parser);
  /* Any identifiers, including those declared as type names, are OK
     here.  */
  while (true)
    {
      tree id;
      if (FUNC4 (parser, CPP_NAME))
	{
	  FUNC2 (parser, "expected identifier");
	  break;
	}
      id = FUNC5 (parser)->value;
      list = FUNC7 (list, FUNC0 (NULL_TREE, id));
      FUNC1 (parser);
      if (FUNC3 (parser, CPP_COMMA))
	FUNC1 (parser);
      else
	break;
    }
  FUNC6 (parser, CPP_GREATER, "expected %<>%>");
  return list;
}