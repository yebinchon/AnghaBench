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
struct invariant {int /*<<< orphan*/  def; } ;
struct df_ref {struct df_ref* next_ref; } ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {struct df_ref* uses; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC2 (struct df_ref*) ; 
 int /*<<< orphan*/  df ; 
 struct invariant* FUNC3 (struct df_ref*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (rtx insn)
{
  struct df_ref *use;
  struct invariant *inv;

  for (use = FUNC0 (df, insn)->uses; use; use = use->next_ref)
    {
      inv = FUNC3 (use);
      if (inv)
	FUNC4 (inv->def, FUNC2 (use), FUNC1 (use));
    }
}