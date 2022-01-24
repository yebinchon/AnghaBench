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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  cp_parser ;
typedef  int /*<<< orphan*/  cp_declarator ;
typedef  int /*<<< orphan*/  cp_cv_quals ;

/* Variables and functions */
 int INDIRECT_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static cp_declarator *
FUNC6 (cp_parser* parser)
{
  enum tree_code code;
  tree class_type;
  cp_cv_quals cv_quals;

  /* We don't know if there's a ptr-operator next, or not.  */
  FUNC1 (parser);
  /* Try the ptr-operator.  */
  code = FUNC2 (parser, &class_type, &cv_quals);
  /* If it worked, look for more conversion-declarators.  */
  if (FUNC0 (parser))
    {
      cp_declarator *declarator;

      /* Parse another optional declarator.  */
      declarator = FUNC6 (parser);

      /* Create the representation of the declarator.  */
      if (class_type)
	declarator = FUNC4 (cv_quals, class_type,
					     declarator);
      else if (code == INDIRECT_REF)
	declarator = FUNC3 (cv_quals, declarator);
      else
	declarator = FUNC5 (cv_quals, declarator);

      return declarator;
   }

  return NULL;
}