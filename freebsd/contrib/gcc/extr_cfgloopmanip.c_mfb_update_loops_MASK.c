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
struct loop {int /*<<< orphan*/  latch; } ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {struct loop* loop_father; } ;

/* Variables and functions */
 size_t CDI_DOMINATORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct loop*) ; 
 scalar_t__* dom_computed ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (basic_block jump)
{
  struct loop *loop = FUNC3 (jump)->loop_father;

  if (dom_computed[CDI_DOMINATORS])
    FUNC1 (CDI_DOMINATORS, jump, FUNC2 (jump));
  FUNC0 (jump, loop);
  loop->latch = jump;
}