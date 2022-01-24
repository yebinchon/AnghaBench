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
struct c_expr {scalar_t__ value; void* original_code; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COLON ; 
 int /*<<< orphan*/  CPP_QUERY ; 
 void* ERROR_MARK ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 void* FUNC2 (scalar_t__) ; 
 struct c_expr FUNC3 (int /*<<< orphan*/ *,struct c_expr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 struct c_expr FUNC10 (struct c_expr) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 int skip_evaluation ; 
 scalar_t__ truthvalue_false_node ; 
 scalar_t__ truthvalue_true_node ; 

__attribute__((used)) static struct c_expr
FUNC14 (c_parser *parser, struct c_expr *after)
{
  struct c_expr cond, exp1, exp2, ret;
  FUNC11 (!after || FUNC1 ());
  cond = FUNC3 (parser, after);
  if (FUNC7 (parser, CPP_QUERY))
    return cond;
  cond = FUNC10 (cond);
  FUNC4 (parser);
  if (FUNC6 (parser, CPP_COLON))
    {
      if (pedantic)
	FUNC12 ("ISO C forbids omitting the middle term of a ?: expression");
      /* Make sure first operand is calculated only once.  */
      exp1.value = FUNC13 (FUNC9 (cond.value));
      cond.value = FUNC2 (exp1.value);
      skip_evaluation += cond.value == truthvalue_true_node;
    }
  else
    {
      cond.value
	= FUNC2
	(FUNC9 (cond.value));
      skip_evaluation += cond.value == truthvalue_false_node;
      exp1 = FUNC5 (parser);
      skip_evaluation += ((cond.value == truthvalue_true_node)
			  - (cond.value == truthvalue_false_node));
    }
  if (!FUNC8 (parser, CPP_COLON, "expected %<:%>"))
    {
      skip_evaluation -= cond.value == truthvalue_true_node;
      ret.value = error_mark_node;
      ret.original_code = ERROR_MARK;
      return ret;
    }
  exp2 = FUNC14 (parser, NULL);
  exp2 = FUNC10 (exp2);
  skip_evaluation -= cond.value == truthvalue_true_node;
  ret.value = FUNC0 (cond.value, exp1.value, exp2.value);
  ret.original_code = ERROR_MARK;
  return ret;
}