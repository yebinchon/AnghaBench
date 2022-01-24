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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ ARRAY_TYPE ; 
 int DCmode ; 
 int DFmode ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ MODE_COMPLEX_INT ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ TARGET_64BIT ; 
 scalar_t__ TARGET_ALIGN_DOUBLE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6 (tree field, int computed)
{
  enum machine_mode mode;
  tree type = FUNC3 (field);

  if (TARGET_64BIT || TARGET_ALIGN_DOUBLE)
    return computed;
  mode = FUNC4 (FUNC2 (type) == ARRAY_TYPE
		    ? FUNC5 (type) : type);
  if (mode == DFmode || mode == DCmode
      || FUNC0 (mode) == MODE_INT
      || FUNC0 (mode) == MODE_COMPLEX_INT)
    return FUNC1 (32, computed);
  return computed;
}