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
typedef  void* tree ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ COMPOUND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ COND_EXPR ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NON_DEPENDENT_EXPR ; 
 scalar_t__ OFFSET_REF ; 
 scalar_t__ REAL_CST ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ THROW_EXPR ; 
 scalar_t__ FUNC1 (void*) ; 
 void* FUNC2 (void*,int) ; 
 scalar_t__ FUNC3 (void*) ; 
 scalar_t__ VAR_DECL ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC5 (scalar_t__,scalar_t__,void*,void*) ; 
 void* FUNC6 (scalar_t__,scalar_t__,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (void*) ; 
 scalar_t__ unknown_type_node ; 

tree
FUNC11 (tree expr)
{
  tree inner_expr;

  /* Preserve null pointer constants so that the type of things like
     "p == 0" where "p" is a pointer can be determined.  */
  if (FUNC10 (expr))
    return expr;
  /* Preserve OVERLOADs; the functions must be available to resolve
     types.  */
  inner_expr = expr;
  if (FUNC1 (inner_expr) == ADDR_EXPR)
    inner_expr = FUNC2 (inner_expr, 0);
  if (FUNC1 (inner_expr) == COMPONENT_REF)
    inner_expr = FUNC2 (inner_expr, 1);
  if (FUNC8 (inner_expr)
      || FUNC1 (inner_expr) == OFFSET_REF)
    return expr;
  /* There is no need to return a proxy for a variable.  */
  if (FUNC1 (expr) == VAR_DECL)
    return expr;
  /* Preserve string constants; conversions from string constants to
     "char *" are allowed, even though normally a "const char *"
     cannot be used to initialize a "char *".  */
  if (FUNC1 (expr) == STRING_CST)
    return expr;
  /* Preserve arithmetic constants, as an optimization -- there is no
     reason to create a new node.  */
  if (FUNC1 (expr) == INTEGER_CST || FUNC1 (expr) == REAL_CST)
    return expr;
  /* Preserve THROW_EXPRs -- all throw-expressions have type "void".
     There is at least one place where we want to know that a
     particular expression is a throw-expression: when checking a ?:
     expression, there are special rules if the second or third
     argument is a throw-expression.  */
  if (FUNC1 (expr) == THROW_EXPR)
    return expr;

  if (FUNC1 (expr) == COND_EXPR)
    return FUNC6 (COND_EXPR,
		   FUNC3 (expr),
		   FUNC2 (expr, 0),
		   (FUNC2 (expr, 1)
		    ? FUNC11 (FUNC2 (expr, 1))
		    : FUNC11 (FUNC2 (expr, 0))),
		   FUNC11 (FUNC2 (expr, 2)));
  if (FUNC1 (expr) == COMPOUND_EXPR
      && !FUNC0 (expr))
    return FUNC5 (COMPOUND_EXPR,
		   FUNC3 (expr),
		   FUNC2 (expr, 0),
		   FUNC11 (FUNC2 (expr, 1)));

  /* If the type is unknown, it can't really be non-dependent */
  FUNC7 (FUNC3 (expr) != unknown_type_node);

  /* Otherwise, build a NON_DEPENDENT_EXPR.

     REFERENCE_TYPEs are not stripped for expressions in templates
     because doing so would play havoc with mangling.  Consider, for
     example:

       template <typename T> void f<T& g>() { g(); }

     In the body of "f", the expression for "g" will have
     REFERENCE_TYPE, even though the standard says that it should
     not.  The reason is that we must preserve the syntactic form of
     the expression so that mangling (say) "f<g>" inside the body of
     "f" works out correctly.  Therefore, the REFERENCE_TYPE is
     stripped here.  */
  return FUNC4 (NON_DEPENDENT_EXPR, FUNC9 (FUNC3 (expr)), expr);
}