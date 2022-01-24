#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {scalar_t__ (* type_for_size ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
#define  BLOCK_POINTER_TYPE 130 
 int /*<<< orphan*/  CONVERT_EXPR ; 
#define  INTEGER_TYPE 129 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/  POINTER_SIZE ; 
#define  POINTER_TYPE 128 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ integer_zero_node ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC14 (tree type, tree expr)
{
  if (FUNC3 (expr) == type)
      return expr;
  
  if (FUNC11 (expr))
    {
      tree t = FUNC7 (type, 0);
      if (FUNC2 (expr) || FUNC1 (expr))
	t = FUNC10 (t, 0, FUNC2 (expr),
						FUNC1 (expr));
      return t;
    }
  
  switch (FUNC0 (FUNC3 (expr)))
    {
    case BLOCK_POINTER_TYPE:
	return FUNC9 (NOP_EXPR, type, expr);
	
    case INTEGER_TYPE:
	if (FUNC4 (FUNC3 (expr)) != POINTER_SIZE)
		expr = FUNC9 (NOP_EXPR,
					lang_hooks.types.type_for_size (POINTER_SIZE, 0),
					expr);
	return FUNC9 (CONVERT_EXPR, type, expr);
	
    case POINTER_TYPE:
	/* APPLE LOCAL radar 5809099 */
	if (FUNC12 (FUNC3 (expr)) || FUNC5 (FUNC3 (FUNC3 (expr))))
		return FUNC6 (NOP_EXPR, type, expr);
	/* fall thru */
	
      default:
	FUNC8 ("cannot convert to a block pointer type");
	return FUNC14 (type, integer_zero_node);
    }
}