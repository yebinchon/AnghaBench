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
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  RID_AT_ALIAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (c_parser *parser)
{
  tree id1, id2;
  FUNC6 (FUNC2 (parser, RID_AT_ALIAS));
  FUNC0 (parser);
  if (FUNC3 (parser, CPP_NAME))
    {
      FUNC1 (parser, "expected identifier");
      FUNC5 (parser, CPP_SEMICOLON, NULL);
      return;
    }
  id1 = FUNC4 (parser)->value;
  FUNC0 (parser);
  if (FUNC3 (parser, CPP_NAME))
    {
      FUNC1 (parser, "expected identifier");
      FUNC5 (parser, CPP_SEMICOLON, NULL);
      return;
    }
  id2 = FUNC4 (parser)->value;
  FUNC0 (parser);
  FUNC5 (parser, CPP_SEMICOLON, "expected %<;%>");
  FUNC7 (id1, id2);
}