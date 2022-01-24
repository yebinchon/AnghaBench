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
typedef  scalar_t__ tree ;
struct c_type_name {int dummy; } ;
struct c_expr {int /*<<< orphan*/  original_code; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR_MARK ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct c_expr FUNC2 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 struct c_expr FUNC3 (int /*<<< orphan*/ *,struct c_expr) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 scalar_t__ FUNC6 (struct c_type_name*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct c_expr) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct c_expr
FUNC10 (c_parser *parser,
					      struct c_type_name *type_name)
{
  tree type;
  struct c_expr init;
  struct c_expr expr;
  FUNC9 (NULL_TREE, NULL, 0);
  type = FUNC6 (type_name);
  if (type != error_mark_node && FUNC0 (type))
    {
      FUNC4 ("compound literal has variable size");
      type = error_mark_node;
    }
  init = FUNC2 (parser, type, false);
  FUNC5 ();
  FUNC7 (type, init);

  if (pedantic && !flag_isoc99)
    FUNC8 ("ISO C90 forbids compound literals");
  expr.value = FUNC1 (type, init.value);
  expr.original_code = ERROR_MARK;
  return FUNC3 (parser, expr);
}