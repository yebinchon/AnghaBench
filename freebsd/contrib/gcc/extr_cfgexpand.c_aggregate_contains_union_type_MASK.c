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
 scalar_t__ FIELD_DECL ; 
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 

__attribute__((used)) static bool
FUNC4 (tree type)
{
  tree field;

  if (FUNC1 (type) == UNION_TYPE
      || FUNC1 (type) == QUAL_UNION_TYPE)
    return true;
  if (FUNC1 (type) == ARRAY_TYPE)
    return FUNC4 (FUNC2 (type));
  if (FUNC1 (type) != RECORD_TYPE)
    return false;

  for (field = FUNC3 (type); field; field = FUNC0 (field))
    if (FUNC1 (field) == FIELD_DECL)
      if (FUNC4 (FUNC2 (field)))
	return true;

  return false;
}