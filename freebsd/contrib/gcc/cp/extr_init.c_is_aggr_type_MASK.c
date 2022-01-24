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
 scalar_t__ BOUND_TEMPLATE_TEMPLATE_PARM ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ error_mark_node ; 

int
FUNC3 (tree type, int or_else)
{
  if (type == error_mark_node)
    return 0;

  if (! FUNC0 (type)
      && FUNC1 (type) != TEMPLATE_TYPE_PARM
      && FUNC1 (type) != BOUND_TEMPLATE_TEMPLATE_PARM)
    {
      if (or_else)
	FUNC2 ("%qT is not an aggregate type", type);
      return 0;
    }
  return 1;
}