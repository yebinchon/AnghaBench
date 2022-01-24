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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ const NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const) ; 

__attribute__((used)) static int
FUNC2 (const void* m1_p, const void* m2_p)
{
  const tree *const m1 = (const tree *) m1_p;
  const tree *const m2 = (const tree *) m2_p;

  if (*m1 == NULL_TREE && *m2 == NULL_TREE)
    return 0;
  if (*m1 == NULL_TREE)
    return -1;
  if (*m2 == NULL_TREE)
    return 1;
  if (FUNC0 (FUNC1 (*m1)) < FUNC0 (FUNC1 (*m2)))
    return -1;
  return 1;
}