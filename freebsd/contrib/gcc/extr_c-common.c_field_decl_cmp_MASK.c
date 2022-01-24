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
 scalar_t__ FUNC0 (int /*<<< orphan*/  const) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 scalar_t__ TYPE_DECL ; 

int
FUNC2 (const void *x_p, const void *y_p)
{
  const tree *const x = (const tree *const) x_p;
  const tree *const y = (const tree *const) y_p;

  if (FUNC0 (*x) == FUNC0 (*y))
    /* A nontype is "greater" than a type.  */
    return (FUNC1 (*y) == TYPE_DECL) - (FUNC1 (*x) == TYPE_DECL);
  if (FUNC0 (*x) == NULL_TREE)
    return -1;
  if (FUNC0 (*y) == NULL_TREE)
    return 1;
  if (FUNC0 (*x) < FUNC0 (*y))
    return -1;
  return 1;
}