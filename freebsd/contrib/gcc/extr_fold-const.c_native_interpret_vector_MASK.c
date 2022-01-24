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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC7 (tree type, unsigned char *ptr, int len)
{
  tree etype, elem, elements;
  int i, size, count;

  etype = FUNC1 (type);
  size = FUNC0 (FUNC2 (etype));
  count = FUNC3 (type);
  if (size * count > len)
    return NULL_TREE;

  elements = NULL_TREE;
  for (i = count - 1; i >= 0; i--)
    {
      elem = FUNC5 (etype, ptr+(i*size), size);
      if (!elem)
	return NULL_TREE;
      elements = FUNC6 (NULL_TREE, elem, elements);
    }
  return FUNC4 (type, elements);
}