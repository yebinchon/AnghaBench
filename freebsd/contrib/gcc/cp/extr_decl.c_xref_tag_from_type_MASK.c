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
typedef  int /*<<< orphan*/  tag_scope ;
typedef  enum tag_types { ____Placeholder_tag_types } tag_types ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int class_type ; 
 int record_type ; 
 int union_type ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

tree
FUNC4 (tree old, tree id, tag_scope scope)
{
  enum tag_types tag_kind;

  if (FUNC1 (old) == RECORD_TYPE)
    tag_kind = (FUNC0 (old) ? class_type : record_type);
  else
    tag_kind  = union_type;

  if (id == NULL_TREE)
    id = FUNC2 (old);

  return FUNC3 (tag_kind, id, scope, false);
}