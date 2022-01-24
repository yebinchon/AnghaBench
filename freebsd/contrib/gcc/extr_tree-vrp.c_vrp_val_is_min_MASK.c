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
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC3 (tree val)
{
  tree type_min = FUNC1 (FUNC0 (val));

  return (val == type_min
	  || (type_min != NULL_TREE
	      && FUNC2 (val, type_min, 0)));
}