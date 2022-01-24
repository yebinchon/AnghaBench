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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static tree
FUNC5 (tree type, unsigned char *ptr, int len)
{
  tree etype, rpart, ipart;
  int size;

  etype = FUNC1 (type);
  size = FUNC0 (FUNC2 (etype));
  if (size * 2 > len)
    return NULL_TREE;
  rpart = FUNC4 (etype, ptr, size);
  if (!rpart)
    return NULL_TREE;
  ipart = FUNC4 (etype, ptr+size, size);
  if (!ipart)
    return NULL_TREE;
  return FUNC3 (type, rpart, ipart);
}