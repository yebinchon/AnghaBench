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

/* Variables and functions */
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ba_check ; 
 int /*<<< orphan*/  ba_unique ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

tree
FUNC4 (tree object, tree type, bool check_access, bool nonnull)
{
  tree binfo;
  tree object_type;

  if (FUNC1 (FUNC0 (object)))
    {
      object_type = FUNC0 (FUNC0 (object));
      type = FUNC0 (type);
    }
  else
    object_type = FUNC0 (object);

  binfo = FUNC3 (object_type, type,
		       check_access ? ba_check : ba_unique,
		       NULL);
  if (!binfo || binfo == error_mark_node)
    return error_mark_node;

  return FUNC2 (PLUS_EXPR, object, binfo, nonnull);
}