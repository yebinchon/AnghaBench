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
typedef  int DECL_IGNORED_P ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_DECL ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void
FUNC7 (tree tmpl)
{
  tree decl;

  FUNC6 (FUNC3 (tmpl) == TEMPLATE_DECL);
  decl = FUNC0 (tmpl);

  if (FUNC3 (decl) == FUNCTION_DECL
      || (FUNC3 (decl) == TYPE_DECL
	  && FUNC2 (FUNC4 (decl))))
    {
      /* The parser rejects template declarations in local classes.  */
      FUNC6 (!current_function_decl);
      /* The parser rejects any use of virtual in a function template.  */
      FUNC6 (!(FUNC3 (decl) == FUNCTION_DECL
		    && FUNC1 (decl)));

      /* The debug-information generating code doesn't know what to do
	 with member templates.  */
      DECL_IGNORED_P (tmpl) = 1;
    }
  else
    FUNC5 ("template declaration of %q#D", decl);
}