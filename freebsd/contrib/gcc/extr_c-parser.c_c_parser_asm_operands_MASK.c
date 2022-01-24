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
typedef  scalar_t__ tree ;
struct c_expr {scalar_t__ value; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_CLOSE_SQUARE ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_SQUARE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int c_lex_string_translate ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct c_expr FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 struct c_expr FUNC13 (struct c_expr) ; 

__attribute__((used)) static tree
FUNC14 (c_parser *parser, bool convert_p)
{
  tree list = NULL_TREE;
  while (true)
    {
      tree name, str;
      struct c_expr expr;
      if (FUNC8 (parser, CPP_OPEN_SQUARE))
	{
	  FUNC5 (parser);
	  if (FUNC8 (parser, CPP_NAME))
	    {
	      tree id = FUNC9 (parser)->value;
	      FUNC5 (parser);
	      name = FUNC2 (FUNC0 (id),
				   FUNC1 (id));
	    }
	  else
	    {
	      FUNC6 (parser, "expected identifier");
	      FUNC11 (parser, CPP_CLOSE_SQUARE, NULL);
	      return NULL_TREE;
	    }
	  FUNC11 (parser, CPP_CLOSE_SQUARE,
				     "expected %<]%>");
	}
      else
	name = NULL_TREE;
      str = FUNC4 (parser);
      if (str == NULL_TREE)
	return NULL_TREE;
      c_lex_string_translate = 1;
      if (!FUNC10 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
	{
	  c_lex_string_translate = 0;
	  return NULL_TREE;
	}
      expr = FUNC7 (parser);
      if (convert_p)
	expr = FUNC13 (expr);
      c_lex_string_translate = 0;
      if (!FUNC10 (parser, CPP_CLOSE_PAREN, "expected %<)%>"))
	{
	  FUNC11 (parser, CPP_CLOSE_PAREN, NULL);
	  return NULL_TREE;
	}
      list = FUNC12 (list, FUNC3 (FUNC3 (name, str),
					     expr.value));
      if (FUNC8 (parser, CPP_COMMA))
	FUNC5 (parser);
      else
	break;
    }
  return list;
}