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
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_PRAGMA_EOL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC9 (c_parser *parser)
{
  tree stmt, name = NULL;

  if (FUNC3 (parser, CPP_OPEN_PAREN))
    {
      FUNC1 (parser);
      if (FUNC3 (parser, CPP_NAME))
	{
	  name = FUNC6 (parser)->value;
	  FUNC1 (parser);
	  FUNC7 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
	}
      else
	FUNC2 (parser, "expected identifier");
    }
  else if (FUNC4 (parser, CPP_PRAGMA_EOL))
    FUNC2 (parser, "expected %<(%> or end of line");
  FUNC8 (parser);

  stmt = FUNC5 (parser);
  return FUNC0 (stmt, name);
}