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
struct c_expr {scalar_t__ value; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 scalar_t__ COMPOUND_LITERAL_EXPR ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 struct c_expr FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct c_expr FUNC3 (int /*<<< orphan*/ *,struct c_expr*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct c_expr FUNC5 (struct c_expr) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct c_expr) ; 

__attribute__((used)) static void
FUNC8 (c_parser *parser, struct c_expr *after)
{
  struct c_expr init;
  FUNC6 (!after || FUNC1 ());
  if (FUNC4 (parser, CPP_OPEN_BRACE) && !after)
    init = FUNC2 (parser, NULL_TREE, true);
  else
    {
      init = FUNC3 (parser, after);
      if (init.value != NULL_TREE
	  && FUNC0 (init.value) != STRING_CST
	  && FUNC0 (init.value) != COMPOUND_LITERAL_EXPR)
	init = FUNC5 (init);
    }
  FUNC7 (init);
}