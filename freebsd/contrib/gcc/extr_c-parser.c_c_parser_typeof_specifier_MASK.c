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
typedef  int /*<<< orphan*/  tree ;
struct c_typespec {int /*<<< orphan*/  spec; int /*<<< orphan*/  kind; } ;
struct c_type_name {int dummy; } ;
struct c_expr {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_TYPEOF ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct c_type_name* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctsk_typeof ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct c_type_name*) ; 
 int /*<<< orphan*/  in_typeof ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  skip_evaluation ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static struct c_typespec
FUNC22 (c_parser *parser)
{
  struct c_typespec ret;
  ret.kind = ctsk_typeof;
  ret.spec = error_mark_node;
  FUNC18 (FUNC12 (parser, RID_TYPEOF));
  FUNC10 (parser);
  skip_evaluation++;
  in_typeof++;
  if (!FUNC14 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      skip_evaluation--;
      in_typeof--;
      return ret;
    }
  if (FUNC13 (parser))
    {
      struct c_type_name *type = FUNC16 (parser);
      skip_evaluation--;
      in_typeof--;
      if (type != NULL)
	{
	  ret.spec = FUNC19 (type);
	  FUNC20 (FUNC21 (ret.spec, NULL_TREE));
	}
    }
  else
    {
      bool was_vm;
      struct c_expr expr = FUNC11 (parser);
      skip_evaluation--;
      in_typeof--;
      if (FUNC5 (expr.value) == COMPONENT_REF
	  && FUNC1 (FUNC6 (expr.value, 1)))
	FUNC17 ("%<typeof%> applied to a bit-field");
      ret.spec = FUNC7 (expr.value);
      was_vm = FUNC21 (ret.spec, NULL_TREE);
      /* This should be returned with the type so that when the type
	 is evaluated, this can be evaluated.  For now, we avoid
	 evaluation when the context might.  */
      if (!skip_evaluation && was_vm)
	{
	  tree e = expr.value;

	  /* If the expression is not of a type to which we cannot assign a line
	     number, wrap the thing in a no-op NOP_EXPR.  */
	  if (FUNC2 (e) || FUNC0 (e))
	    e = FUNC9 (NOP_EXPR, void_type_node, e);

	  if (FUNC3 (e))
	    FUNC4 (e, input_location);

	  FUNC8 (e);
	}
      FUNC20 (was_vm);
    }
  FUNC15 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
  return ret;
}