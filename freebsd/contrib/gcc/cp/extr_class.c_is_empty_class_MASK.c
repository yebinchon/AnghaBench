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
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ error_mark_node ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5 (tree type)
{
  if (type == error_mark_node)
    return 0;

  if (! FUNC2 (type))
    return 0;

  /* In G++ 3.2, whether or not a class was empty was determined by
     looking at its size.  */
  if (FUNC3 (2))
    return FUNC0 (type);
  else
    return FUNC4 (FUNC1 (type));
}