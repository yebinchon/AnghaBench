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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int
FUNC4 (tree t)
{
  t = FUNC3 (t);

  if (t == error_mark_node)
    return 1;

  /* NULL pointers to data members are initialized with -1.  */
  if (FUNC2 (t))
    return 0;

  /* Classes that contain types that can't be zero-initialized, cannot
     be zero-initialized themselves.  */
  if (FUNC1 (t) && FUNC0 (t))
    return 0;

  return 1;
}