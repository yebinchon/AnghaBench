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
 int /*<<< orphan*/  CPP_STRING ; 
 int /*<<< orphan*/  CPP_WSTRING ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static tree
FUNC6 (c_parser *parser)
{
  tree str;
  if (FUNC3 (parser, CPP_STRING))
    {
      str = FUNC4 (parser)->value;
      FUNC1 (parser);
    }
  else if (FUNC3 (parser, CPP_WSTRING))
    {
      FUNC5 ("wide string literal in %<asm%>");
      str = FUNC0 (1, "");
      FUNC1 (parser);
    }
  else
    {
      FUNC2 (parser, "expected string literal");
      str = NULL_TREE;
    }
  return str;
}