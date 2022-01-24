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
typedef  char* tree ;
typedef  int /*<<< orphan*/  conversion ;

/* Variables and functions */
 int /*<<< orphan*/  LOOKUP_NORMAL ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  conversion_obstack ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 char* error_mark_node ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 scalar_t__ processing_template_decl ; 

tree
FUNC8 (tree type, tree expr)
{
  conversion *conv;
  void *p;

  if (FUNC5 (expr))
    return error_mark_node;

  /* Get the high-water mark for the CONVERSION_OBSTACK.  */
  p = FUNC2 (0);

  conv = FUNC6 (type, FUNC0 (expr), expr,
			      /*c_cast_p=*/false,
			      LOOKUP_NORMAL);
  if (!conv)
    {
      FUNC4 ("could not convert %qE to %qT", expr, type);
      expr = error_mark_node;
    }
  else if (processing_template_decl)
    {
      /* In a template, we are only concerned about determining the
	 type of non-dependent expressions, so we do not have to
	 perform the actual conversion.  */
      if (FUNC0 (expr) != type)
	expr = FUNC1 (type, expr);
    }
  else
    expr = FUNC3 (conv, expr);

  /* Free all the conversions we allocated.  */
  FUNC7 (&conversion_obstack, p);

  return expr;
}