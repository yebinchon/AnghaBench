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
typedef  int cp_cv_quals ;

/* Variables and functions */
 scalar_t__ METHOD_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int TYPE_QUAL_RESTRICT ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 

tree
FUNC8 (tree fntype, tree ctype, cp_cv_quals quals)
{
  tree raises;
  int type_quals;

  if (fntype == error_mark_node || ctype == error_mark_node)
    return error_mark_node;

  type_quals = quals & ~TYPE_QUAL_RESTRICT;
  ctype = FUNC7 (ctype, type_quals);
  fntype = FUNC6 (ctype, FUNC2 (fntype),
				       (FUNC1 (fntype) == METHOD_TYPE
					? FUNC0 (FUNC3 (fntype))
					: FUNC3 (fntype)));
  raises = FUNC4 (fntype);
  if (raises)
    fntype = FUNC5 (fntype, raises);

  return fntype;
}