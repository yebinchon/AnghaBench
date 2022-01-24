#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_5__ {scalar_t__ attributes; } ;
typedef  TYPE_1__ cp_decl_specifier_seq ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NORMAL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

tree
FUNC9 (cp_decl_specifier_seq *declspecs)
{
  tree t = FUNC2 (declspecs);

  if (!t)
    return NULL_TREE;

  if (declspecs->attributes)
    {
      FUNC8 (0, "attribute ignored in declaration of %q+#T", t);
      FUNC8 (0, "attribute for %q+#T must follow the %qs keyword",
	       t, FUNC3 (t));

    }

  if (FUNC7 (t) == error_mark_node)
    return NULL_TREE;

  /* This is where the variables in an anonymous union are
     declared.  An anonymous union declaration looks like:
     union { ... } ;
     because there is no declarator after the union, the parser
     sends that declaration here.  */
  if (FUNC0 (t))
    {
      FUNC5 (t);

      if (FUNC1 (t))
	{
	  tree decl = FUNC6 (/*declarator=*/NULL,
				      declspecs, NORMAL, 0, NULL);
	  FUNC4 (decl);
	}
    }

  return t;
}