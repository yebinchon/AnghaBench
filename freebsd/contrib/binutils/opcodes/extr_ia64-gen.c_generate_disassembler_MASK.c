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
struct main_entry {int /*<<< orphan*/  completers; int /*<<< orphan*/  main_index; TYPE_1__* opcode; } ;
struct TYPE_2__ {scalar_t__ type; int /*<<< orphan*/  mask; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 scalar_t__ IA64_TYPE_DYN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  bittree ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct main_entry** ordered_table ; 
 int otlen ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6 (void)
{
  int i;

  bittree = FUNC4 ();

  for (i = 0; i < otlen; i++)
    {
      struct main_entry *ptr = ordered_table[i];

      if (ptr->opcode->type != IA64_TYPE_DYN)
	FUNC0 (bittree,
		       ptr->opcode->opcode, ptr->opcode->mask, 
		       ptr->main_index,
		       ptr->completers, 1);
    }

  FUNC1 (bittree);
  FUNC2 ();
  FUNC3 (bittree);

  FUNC5 ();
}