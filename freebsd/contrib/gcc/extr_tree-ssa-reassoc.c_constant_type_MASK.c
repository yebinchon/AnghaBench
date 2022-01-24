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

/* Variables and functions */
 int FLOAT_CONST_TYPE ; 
 int INTEGER_CONST_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int OTHER_CONST_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC3 (tree t)
{
  if (FUNC0 (FUNC2 (t)))
    return INTEGER_CONST_TYPE;
  else if (FUNC1 (FUNC2 (t)))
    return FLOAT_CONST_TYPE;
  else
    return OTHER_CONST_TYPE;
}