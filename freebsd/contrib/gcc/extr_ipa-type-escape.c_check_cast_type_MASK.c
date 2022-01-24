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
typedef  enum cast_type { ____Placeholder_cast_type } cast_type ;

/* Variables and functions */
 int CT_DOWN ; 
 int CT_SIDEWAYS ; 
 int CT_UP ; 
 int CT_USELESS ; 
 int FUNC0 (scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static enum cast_type
FUNC2 (tree to_type, tree from_type)
{
  int to_stars = FUNC0 (&to_type);
  int from_stars = FUNC0 (&from_type);
  if (to_stars != from_stars) 
    return CT_SIDEWAYS;

  if (to_type == from_type)
    return CT_USELESS;

  if (FUNC1 (to_type, from_type)) return CT_UP;
  if (FUNC1 (from_type, to_type)) return CT_DOWN;
  return CT_SIDEWAYS;
}