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
 int TYPE_UNQUALIFIED ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

int
FUNC2 (tree type)
{
  type = FUNC1 (type);
  if (type == error_mark_node)
    return TYPE_UNQUALIFIED;
  return FUNC0 (type);
}