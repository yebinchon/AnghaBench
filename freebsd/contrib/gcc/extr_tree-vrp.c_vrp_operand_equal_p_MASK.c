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
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool
FUNC2 (tree val1, tree val2)
{
  if (val1 == val2)
    return true;
  if (!val1 || !val2 || !FUNC1 (val1, val2, 0))
    return false;
  if (FUNC0 (val1))
    return FUNC0 (val2);
  return true;
}