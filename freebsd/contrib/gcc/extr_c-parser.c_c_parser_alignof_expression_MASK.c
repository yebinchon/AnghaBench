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
struct c_type_name {int dummy; } ;
struct c_expr {void* original_code; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 void* ERROR_MARK ; 
 int /*<<< orphan*/  RID_ALIGNOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC6 (int /*<<< orphan*/ *,struct c_type_name*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct c_type_name* FUNC8 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct c_type_name*) ; 
 int /*<<< orphan*/  in_alignof ; 
 int /*<<< orphan*/  skip_evaluation ; 

__attribute__((used)) static struct c_expr
FUNC13 (c_parser *parser)
{
  struct c_expr expr;
  FUNC11 (FUNC4 (parser, RID_ALIGNOF));
  FUNC2 (parser);
  skip_evaluation++;
  in_alignof++;
  if (FUNC3 (parser, CPP_OPEN_PAREN)
      && FUNC10 (FUNC5 (parser)))
    {
      /* Either __alignof__ ( type-name ) or __alignof__
	 unary-expression starting with a compound literal.  */
      struct c_type_name *type_name;
      struct c_expr ret;
      FUNC2 (parser);
      type_name = FUNC8 (parser);
      FUNC7 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (type_name == NULL)
	{
	  struct c_expr ret;
	  skip_evaluation--;
	  in_alignof--;
	  ret.value = error_mark_node;
	  ret.original_code = ERROR_MARK;
	  return ret;
	}
      if (FUNC3 (parser, CPP_OPEN_BRACE))
	{
	  expr = FUNC6 (parser,
							       type_name);
	  goto alignof_expr;
	}
      /* alignof ( type-name ).  */
      skip_evaluation--;
      in_alignof--;
      ret.value = FUNC0 (FUNC12 (type_name));
      ret.original_code = ERROR_MARK;
      return ret;
    }
  else
    {
      struct c_expr ret;
      expr = FUNC9 (parser);
    alignof_expr:
      skip_evaluation--;
      in_alignof--;
      ret.value = FUNC1 (expr.value);
      ret.original_code = ERROR_MARK;
      return ret;
    }
}