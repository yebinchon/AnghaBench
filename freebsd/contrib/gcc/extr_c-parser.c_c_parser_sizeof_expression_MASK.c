#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct c_type_name {TYPE_3__* declarator; } ;
struct c_expr {int /*<<< orphan*/  value; int /*<<< orphan*/  original_code; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {scalar_t__ vla_unspec_p; } ;
struct TYPE_5__ {TYPE_1__ array; } ;
struct TYPE_6__ {scalar_t__ kind; TYPE_2__ u; } ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_MARK ; 
 int /*<<< orphan*/  RID_SIZEOF ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct c_expr FUNC3 (struct c_expr) ; 
 struct c_expr FUNC4 (struct c_type_name*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC9 (int /*<<< orphan*/ *,struct c_type_name*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct c_type_name* FUNC11 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ cdk_array ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  in_sizeof ; 
 int /*<<< orphan*/  skip_evaluation ; 

__attribute__((used)) static struct c_expr
FUNC16 (c_parser *parser)
{
  struct c_expr expr;
  FUNC15 (FUNC7 (parser, RID_SIZEOF));
  FUNC5 (parser);
  skip_evaluation++;
  in_sizeof++;
  if (FUNC6 (parser, CPP_OPEN_PAREN)
      && FUNC13 (FUNC8 (parser)))
    {
      /* Either sizeof ( type-name ) or sizeof unary-expression
	 starting with a compound literal.  */
      struct c_type_name *type_name;
      FUNC5 (parser);
      type_name = FUNC11 (parser);
      FUNC10 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (type_name == NULL)
	{
	  struct c_expr ret;
	  skip_evaluation--;
	  in_sizeof--;
	  ret.value = error_mark_node;
	  ret.original_code = ERROR_MARK;
	  return ret;
	}
      if (FUNC6 (parser, CPP_OPEN_BRACE))
	{
	  expr = FUNC9 (parser,
							       type_name);
	  goto sizeof_expr;
	}
      /* sizeof ( type-name ).  */
      skip_evaluation--;
      in_sizeof--;
      if (type_name->declarator->kind == cdk_array
	  && type_name->declarator->u.array.vla_unspec_p)
	{
	  /* C99 6.7.5.2p4 */
	  FUNC14 ("%<[*]%> not allowed in other than a declaration");
	}
      return FUNC4 (type_name);
    }
  else
    {
      expr = FUNC12 (parser);
    sizeof_expr:
      skip_evaluation--;
      in_sizeof--;
      if (FUNC1 (expr.value) == COMPONENT_REF
	  && FUNC0 (FUNC2 (expr.value, 1)))
	FUNC14 ("%<sizeof%> applied to a bit-field");
      return FUNC3 (expr);
    }
}