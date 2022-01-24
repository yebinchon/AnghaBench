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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_4__ {scalar_t__ (* types_compatible_p ) (scalar_t__,scalar_t__) ;} ;
struct TYPE_3__ {char* (* invalid_conversion ) (scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 int BLOCK_POINTER_TYPE ; 
 int BOOLEAN_TYPE ; 
 int COMPLEX_TYPE ; 
 int ENUMERAL_TYPE ; 
 scalar_t__ ERROR_MARK ; 
 int INTEGER_TYPE ; 
 int POINTER_TYPE ; 
 int REAL_TYPE ; 
 int RECORD_TYPE ; 
 int REFERENCE_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int UNION_TYPE ; 
 int VECTOR_TYPE ; 
 scalar_t__ VOID_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char const*,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 TYPE_2__ lang_hooks ; 
 char* FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 TYPE_1__ targetm ; 

tree
FUNC15 (tree type, tree expr)
{
  tree e = expr;
  enum tree_code code = FUNC0 (type);
  const char *invalid_conv_diag;

  if (type == error_mark_node
      || expr == error_mark_node
      || FUNC1 (expr) == error_mark_node)
    return error_mark_node;

  if ((invalid_conv_diag
       = targetm.invalid_conversion (FUNC1 (expr), type)))
    {
      FUNC10 (invalid_conv_diag, "");
      return error_mark_node;
    }

  if (type == FUNC1 (expr))
    return expr;

  if (FUNC2 (type) == FUNC2 (FUNC1 (expr)))
    return FUNC12 (type, expr);
  if (FUNC0 (FUNC1 (expr)) == ERROR_MARK)
    return error_mark_node;
  if (FUNC0 (FUNC1 (expr)) == VOID_TYPE)
    {
      FUNC10 ("void value not ignored as it ought to be");
      return error_mark_node;
    }
  if (code == VOID_TYPE)
    return FUNC12 (type, e);
  if (code == INTEGER_TYPE || code == ENUMERAL_TYPE)
    return FUNC11 (FUNC6 (type, e));
  if (code == BOOLEAN_TYPE)
    return FUNC12 (type, FUNC3 (expr));
  if (code == POINTER_TYPE || code == REFERENCE_TYPE)
    return FUNC11 (FUNC7 (type, e));
  /* APPLE LOCAL begin blocks (C++ ck) */
  if (code == BLOCK_POINTER_TYPE)
    return FUNC11 (FUNC4 (type, e));
  /* APPLE LOCAL end blocks (C++ ck) */
  if (code == REAL_TYPE)
    return FUNC11 (FUNC8 (type, e));
  if (code == COMPLEX_TYPE)
    return FUNC11 (FUNC5 (type, e));
  if (code == VECTOR_TYPE)
    return FUNC11 (FUNC9 (type, e));
  if ((code == RECORD_TYPE || code == UNION_TYPE)
      && lang_hooks.types_compatible_p (type, FUNC1 (expr)))
      return e;

  FUNC10 ("conversion to non-scalar type requested");
  return error_mark_node;
}