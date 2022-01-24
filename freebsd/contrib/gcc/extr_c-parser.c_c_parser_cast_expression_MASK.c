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
struct c_type_name {TYPE_1__* specs; } ;
struct c_expr {void* original_code; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 void* ERROR_MARK ; 
 int /*<<< orphan*/  FUNC0 (struct c_type_name*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC5 (int /*<<< orphan*/ *,struct c_type_name*) ; 
 struct c_expr FUNC6 (int /*<<< orphan*/ *,struct c_expr) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct c_type_name* FUNC8 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 struct c_expr FUNC11 (struct c_expr) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct c_expr
FUNC14 (c_parser *parser, struct c_expr *after)
{
  FUNC12 (!after || FUNC1 ());
  if (after)
    return FUNC6 (parser, *after);
  /* If the expression begins with a parenthesized type name, it may
     be either a cast or a compound literal; we need to see whether
     the next character is '{' to tell the difference.  If not, it is
     an unary expression.  */
  if (FUNC3 (parser, CPP_OPEN_PAREN)
      && FUNC10 (FUNC4 (parser)))
    {
      struct c_type_name *type_name;
      struct c_expr ret;
      struct c_expr expr;
      FUNC2 (parser);
      type_name = FUNC8 (parser);
      FUNC7 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (type_name == NULL)
	{
	  ret.value = error_mark_node;
	  ret.original_code = ERROR_MARK;
	  return ret;
	}

      /* Save casted types in the function's used types hash table.  */
      FUNC13 (type_name->specs->type);

      if (FUNC3 (parser, CPP_OPEN_BRACE))
	return FUNC5 (parser,
							     type_name);
      expr = FUNC14 (parser, NULL);
      expr = FUNC11 (expr);
      ret.value = FUNC0 (type_name, expr.value);
      ret.original_code = ERROR_MARK;
      return ret;
    }
  else
    return FUNC9 (parser);
}