#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_6__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;
typedef  int /*<<< orphan*/  CONSTRUCTOR_ELTS ;

/* Variables and functions */
 int /*<<< orphan*/  CONSTRUCTOR ; 
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC8 (cp_parser* parser, bool* non_constant_p)
{
  tree initializer;

  /* Assume the expression is constant.  */
  *non_constant_p = false;

  /* If it is not a `{', then we are looking at an
     assignment-expression.  */
  if (FUNC2 (parser->lexer, CPP_OPEN_BRACE))
    {
      initializer
	= FUNC3 (parser,
					/*allow_non_constant_p=*/true,
					non_constant_p);
      if (!*non_constant_p)
	initializer = FUNC6 (initializer);
    }
  else
    {
      /* Consume the `{' token.  */
      FUNC0 (parser->lexer);
      /* Create a CONSTRUCTOR to represent the braced-initializer.  */
      initializer = FUNC7 (CONSTRUCTOR);
      /* If it's not a `}', then there is a non-trivial initializer.  */
      if (FUNC2 (parser->lexer, CPP_CLOSE_BRACE))
	{
	  /* Parse the initializer list.  */
	  CONSTRUCTOR_ELTS (initializer)
	    = FUNC4 (parser, non_constant_p);
	  /* A trailing `,' token is allowed.  */
	  if (FUNC1 (parser->lexer, CPP_COMMA))
	    FUNC0 (parser->lexer);
	}
      /* Now, there should be a trailing `}'.  */
      FUNC5 (parser, CPP_CLOSE_BRACE, "`}'");
    }

  return initializer;
}