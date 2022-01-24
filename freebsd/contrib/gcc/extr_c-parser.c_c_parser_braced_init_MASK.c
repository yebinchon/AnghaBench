#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct c_expr {int /*<<< orphan*/  original_code; int /*<<< orphan*/  value; } ;
struct TYPE_8__ {scalar_t__ error; } ;
typedef  TYPE_1__ c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  ERROR_MARK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct c_expr FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct c_expr
FUNC10 (c_parser *parser, tree type, bool nested_p)
{
  FUNC5 (FUNC2 (parser, CPP_OPEN_BRACE));
  FUNC0 (parser);
  if (nested_p)
    FUNC8 (0);
  else
    FUNC9 (type);
  if (FUNC2 (parser, CPP_CLOSE_BRACE))
    {
      if (pedantic)
	FUNC6 ("ISO C forbids empty initializer braces");
    }
  else
    {
      /* Parse a non-empty initializer list, possibly with a trailing
	 comma.  */
      while (true)
	{
	  FUNC1 (parser);
	  if (parser->error)
	    break;
	  if (FUNC2 (parser, CPP_COMMA))
	    FUNC0 (parser);
	  else
	    break;
	  if (FUNC2 (parser, CPP_CLOSE_BRACE))
	    break;
	}
    }
  if (FUNC3 (parser, CPP_CLOSE_BRACE))
    {
      struct c_expr ret;
      ret.value = error_mark_node;
      ret.original_code = ERROR_MARK;
      FUNC4 (parser, CPP_CLOSE_BRACE, "expected %<}%>");
      return ret;
    }
  FUNC0 (parser);
  return FUNC7 (0);
}