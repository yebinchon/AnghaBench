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
struct TYPE_4__ {struct dwarf2_frame_state* reg; int /*<<< orphan*/  prev; } ;
struct TYPE_3__ {struct dwarf2_frame_state* reg; int /*<<< orphan*/  prev; } ;
struct dwarf2_frame_state {TYPE_2__ regs; TYPE_1__ initial; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dwarf2_frame_state*) ; 

__attribute__((used)) static void
FUNC2 (void *p)
{
  struct dwarf2_frame_state *fs = p;

  FUNC0 (fs->initial.prev);
  FUNC0 (fs->regs.prev);
  FUNC1 (fs->initial.reg);
  FUNC1 (fs->regs.reg);
  FUNC1 (fs);
}