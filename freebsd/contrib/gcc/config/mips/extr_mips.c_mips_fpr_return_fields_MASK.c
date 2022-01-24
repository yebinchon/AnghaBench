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
 scalar_t__ FIELD_DECL ; 
 scalar_t__ REAL_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 int /*<<< orphan*/  TARGET_NEWABI ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int
FUNC4 (tree valtype, tree *fields)
{
  tree field;
  int i;

  if (!TARGET_NEWABI)
    return 0;

  if (FUNC1 (valtype) != RECORD_TYPE)
    return 0;

  i = 0;
  for (field = FUNC3 (valtype); field != 0; field = FUNC0 (field))
    {
      if (FUNC1 (field) != FIELD_DECL)
	continue;

      if (FUNC1 (FUNC2 (field)) != REAL_TYPE)
	return 0;

      if (i == 2)
	return 0;

      fields[i++] = field;
    }
  return i;
}