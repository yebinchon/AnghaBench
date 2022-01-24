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
 scalar_t__ ARRAY_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static int
FUNC7 (tree type)
{
  if (type == NULL_TREE || type == error_mark_node)
    return 0;
  else if (FUNC1 (type))
    return 1;
  else if (FUNC2 (type) == ARRAY_TYPE && FUNC5 (type))
    return FUNC7 (FUNC3 (type));
  else if (FUNC0 (type)
	   && FUNC4 (FUNC6 (type)))
    return 0;
  else
    return 1;
}