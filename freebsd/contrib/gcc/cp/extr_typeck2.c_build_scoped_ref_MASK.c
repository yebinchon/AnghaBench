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
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ba_check ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

tree
FUNC4 (tree datum, tree basetype, tree* binfo_p)
{
  tree binfo;

  if (datum == error_mark_node)
    return error_mark_node;
  if (*binfo_p)
    binfo = *binfo_p;
  else
    binfo = FUNC3 (FUNC0 (datum), basetype, ba_check, NULL);

  if (!binfo || binfo == error_mark_node)
    {
      *binfo_p = NULL_TREE;
      if (!binfo)
	FUNC2 (basetype, FUNC0 (datum));
      return error_mark_node;
    }

  *binfo_p = binfo;
  return FUNC1 (PLUS_EXPR, datum, binfo, 1);
}