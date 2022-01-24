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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_ARRAY ; 
 struct type* FUNC1 (struct type*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int
FUNC3 (struct type *array_type)
{
  int ndimen = 1;
  struct type *tmp_type;

  if ((FUNC0 (array_type) != TYPE_CODE_ARRAY))
    FUNC2 ("Can't get dimensions for a non-array type");

  tmp_type = array_type;

  while ((tmp_type = FUNC1 (tmp_type)))
    {
      if (FUNC0 (tmp_type) == TYPE_CODE_ARRAY)
	++ndimen;
    }
  return ndimen;
}