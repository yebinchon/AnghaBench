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
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ CPP_COLON ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  RID_CASE ; 
 int /*<<< orphan*/  RID_DEFAULT ; 
 int /*<<< orphan*/  RID_IF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ extra_warnings ; 
 int /*<<< orphan*/  flag_isoc99 ; 

__attribute__((used)) static tree
FUNC9 (c_parser *parser, bool *if_p)
{
  tree block = FUNC2 (flag_isoc99);
  while (FUNC6 (parser, RID_CASE)
	 || FUNC6 (parser, RID_DEFAULT)
	 || (FUNC5 (parser, CPP_NAME)
	     && FUNC7 (parser)->type == CPP_COLON))
    FUNC4 (parser);
  *if_p = FUNC6 (parser, RID_IF);
  if (extra_warnings && FUNC5 (parser, CPP_SEMICOLON))
    FUNC0 (FUNC1 ());
  FUNC8 (parser);
  return FUNC3 (block, flag_isoc99);
}