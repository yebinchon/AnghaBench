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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

tree
FUNC4 (tree exp)
{
  /* Perform the integral promotions first so that bitfield
     expressions (which may promote to "int", even if the bitfield is
     declared "unsigned") are promoted correctly.  */
  if (FUNC0 (FUNC1 (exp)))
    exp = FUNC3 (exp);
  /* Perform the other conversions.  */
  exp = FUNC2 (exp);

  return exp;
}