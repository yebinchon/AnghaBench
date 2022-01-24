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
typedef  unsigned int hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

unsigned int
FUNC4 (tree list, hashval_t hashcode)
{
  tree tail;

  for (tail = list; tail; tail = FUNC1 (tail))
    /* ??? Do we want to add in TREE_VALUE too? */
    hashcode = FUNC3
      (FUNC0 (FUNC2 (tail)), hashcode);
  return hashcode;
}