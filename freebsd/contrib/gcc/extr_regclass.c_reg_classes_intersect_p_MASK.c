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
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef  int /*<<< orphan*/  HARD_REG_SET ;

/* Variables and functions */
 int ALL_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NO_REGS ; 
 int /*<<< orphan*/  lose ; 
 int /*<<< orphan*/ * reg_class_contents ; 

int
FUNC3 (enum reg_class c1, enum reg_class c2)
{
  HARD_REG_SET c;

  if (c1 == c2) return 1;

  if (c1 == ALL_REGS || c2 == ALL_REGS)
    return 1;

  FUNC1 (c, reg_class_contents[(int) c1]);
  FUNC0 (c, reg_class_contents[(int) c2]);

  FUNC2 (c, reg_class_contents[(int) NO_REGS], lose);
  return 1;

 lose:
  return 0;
}