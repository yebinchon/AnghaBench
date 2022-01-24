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

/* Variables and functions */
 int TYPE_UNQUALIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

tree
FUNC3 (tree elt_type, tree index_type)
{
  tree t;
  int type_quals = FUNC2 (elt_type);

  if (type_quals != TYPE_UNQUALIFIED)
    elt_type = FUNC1 (elt_type, TYPE_UNQUALIFIED);

  t = FUNC0 (elt_type, index_type);

  if (type_quals != TYPE_UNQUALIFIED)
    t = FUNC1 (t, type_quals);

  return t;
}