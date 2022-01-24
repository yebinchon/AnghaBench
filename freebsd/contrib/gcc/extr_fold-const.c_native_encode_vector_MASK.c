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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC9 (tree expr, unsigned char *ptr, int len)
{
  int i, size, offset, count;
  tree itype, elem, elements;

  offset = 0;
  elements = FUNC4 (expr);
  count = FUNC6 (FUNC2 (expr));
  itype = FUNC2 (FUNC2 (expr));
  size = FUNC0 (FUNC5 (itype));
  for (i = 0; i < count; i++)
    {
      if (elements)
	{
	  elem = FUNC3 (elements);
	  elements = FUNC1 (elements);
	}
      else
	elem = NULL_TREE;

      if (elem)
	{
	  if (FUNC8 (elem, ptr+offset, len-offset) != size)
	    return 0;
	}
      else
	{
	  if (offset + size > len)
	    return 0;
	  FUNC7 (ptr+offset, 0, size);
	}
      offset += size;
    }
  return offset;
}