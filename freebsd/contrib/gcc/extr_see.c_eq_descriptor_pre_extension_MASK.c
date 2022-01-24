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
struct see_pre_extension_expr {int /*<<< orphan*/  se_insn; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (const void *p1, const void *p2)
{
  const struct see_pre_extension_expr *extension1 = p1;
  const struct see_pre_extension_expr *extension2 = p2;
  rtx set1 = FUNC3 (extension1->se_insn);
  rtx set2 = FUNC3 (extension2->se_insn);
  rtx rhs1, rhs2;

  FUNC1 (set1 && set2);
  rhs1 = FUNC0 (set1);
  rhs2 = FUNC0 (set2);

  return FUNC2 (rhs1, rhs2);
}