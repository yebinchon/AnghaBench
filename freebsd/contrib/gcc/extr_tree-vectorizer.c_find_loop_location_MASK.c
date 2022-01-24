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
struct loop {scalar_t__ header; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  scalar_t__ basic_block ;
typedef  int /*<<< orphan*/  LOC ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  UNKNOWN_LOC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct loop*) ; 

LOC
FUNC10 (struct loop *loop)
{
  tree node = NULL_TREE;
  basic_block bb;
  block_stmt_iterator si;

  if (!loop)
    return UNKNOWN_LOC;

  node = FUNC9 (loop);

  if (node && FUNC4 (node) && FUNC1 (node)
      && FUNC0 (node) && FUNC2 (node))
    return FUNC3 (node);

  /* If we got here the loop is probably not "well formed",
     try to estimate the loop location */

  if (!loop->header)
    return UNKNOWN_LOC;

  bb = loop->header;

  for (si = FUNC7 (bb); !FUNC5 (si); FUNC6 (&si))
    {
      node = FUNC8 (si);
      if (node && FUNC4 (node) && FUNC1 (node))
        return FUNC3 (node);
    }

  return UNKNOWN_LOC;
}