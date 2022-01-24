#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct df_ref {struct df_ref* next_ref; } ;
struct df {int dummy; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {struct df_ref* uses; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct df*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct df_ref*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct df_ref *
FUNC8 (struct df *df, rtx insn, rtx reg)
{
  unsigned int uid;
  struct df_ref *use;

  if (FUNC2 (reg) == SUBREG)
    reg = FUNC5 (reg);
  FUNC6 (FUNC4 (reg));

  uid = FUNC3 (insn);
  for (use = FUNC0 (df, uid)->uses; use; use = use->next_ref)
    if (FUNC7 (FUNC1 (use), reg))
      return use; 

  return NULL;
}