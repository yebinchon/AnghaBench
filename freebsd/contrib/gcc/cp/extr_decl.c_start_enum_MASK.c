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
typedef  scalar_t__ TYPE_VALUES ;

/* Variables and functions */
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  enum_type ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ts_current ; 

tree
FUNC8 (tree name)
{
  tree enumtype;

  FUNC3 (FUNC0 (name) == IDENTIFIER_NODE);

  /* If this is the real definition for a previous forward reference,
     fill in the contents in the same object that used to be the
     forward reference.  */

  enumtype = FUNC4 (enum_type, name,
				   /*tag_scope=*/ts_current,
				   /*template_header_p=*/false);

  if (enumtype != NULL_TREE && FUNC0 (enumtype) == ENUMERAL_TYPE)
    {
      FUNC2 ("multiple definition of %q#T", enumtype);
      FUNC2 ("%Jprevious definition here", FUNC1 (enumtype));
      /* Clear out TYPE_VALUES, and start again.  */
      TYPE_VALUES (enumtype) = NULL_TREE;
    }
  else
    {
      /* In case of error, make a dummy enum to allow parsing to
	 continue.  */
      if (enumtype == error_mark_node)
	name = FUNC5 ();

      enumtype = FUNC6 (ENUMERAL_TYPE);
      enumtype = FUNC7 (name, enumtype, /*tag_scope=*/ts_current);
    }

  return enumtype;
}