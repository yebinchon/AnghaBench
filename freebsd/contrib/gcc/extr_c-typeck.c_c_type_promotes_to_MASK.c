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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  double_type_node ; 
 scalar_t__ float_type_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  unsigned_type_node ; 

tree
FUNC4 (tree type)
{
  if (FUNC0 (type) == float_type_node)
    return double_type_node;

  if (FUNC3 (type))
    {
      /* Preserve unsignedness if not really getting any wider.  */
      if (FUNC2 (type)
	  && (FUNC1 (type) == FUNC1 (integer_type_node)))
	return unsigned_type_node;
      return integer_type_node;
    }

  return type;
}