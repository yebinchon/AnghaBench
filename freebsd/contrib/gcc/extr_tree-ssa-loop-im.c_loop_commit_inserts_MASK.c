#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_4__ {int /*<<< orphan*/  loop_father; } ;
struct TYPE_3__ {int /*<<< orphan*/  loop_father; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int last_basic_block ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6 (void)
{
  unsigned old_last_basic_block, i;
  basic_block bb;

  old_last_basic_block = last_basic_block;
  FUNC2 ();
  for (i = old_last_basic_block; i < (unsigned) last_basic_block; i++)
    {
      bb = FUNC0 (i);
      FUNC1 (bb,
		      FUNC3 (FUNC4 (bb)->loop_father,
					FUNC5 (bb)->loop_father));
    }
}