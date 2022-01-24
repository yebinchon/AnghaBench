#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_4__ {scalar_t__ bad_p; } ;
typedef  TYPE_1__ conversion ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  complete_ctor_identifier ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 TYPE_1__* FUNC8 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 

tree
FUNC10 (tree type,
					   tree expr,
					   bool c_cast_p)
{
  conversion *conv;
  void *p;

  if (type == error_mark_node || FUNC7 (expr))
    return error_mark_node;
  /* [dcl.init]

     If the destination type is a (possibly cv-qualified) class type:

     -- If the initialization is direct-initialization ...,
     constructors are considered. ... If no constructor applies, or
     the overload resolution is ambiguous, the initialization is
     ill-formed.  */
  if (FUNC0 (type))
    {
      expr = FUNC3 (NULL_TREE, complete_ctor_identifier,
					FUNC4 (NULL_TREE, expr),
					type, LOOKUP_NORMAL);
      return FUNC2 (type, expr);
    }

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC5 (0);

  conv = FUNC8 (type, FUNC1 (expr), expr,
			      c_cast_p,
			      LOOKUP_NORMAL);
  if (!conv || conv->bad_p)
    expr = NULL_TREE;
  else
    expr = FUNC6 (conv, expr, NULL_TREE, 0, 0,
			      /*issue_conversion_warnings=*/false,
			      c_cast_p);

  /* Free all the conversions we allocated.  */
  FUNC9 (&conversion_obstack, p);

  return expr;
}