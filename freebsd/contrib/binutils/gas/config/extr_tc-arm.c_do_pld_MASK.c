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
struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {int postind; int writeback; int /*<<< orphan*/  preind; int /*<<< orphan*/  isreg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ inst ; 

__attribute__((used)) static void
FUNC3 (void)
{
  FUNC1 (!inst.operands[0].isreg,
	      FUNC0("'[' expected after PLD mnemonic"));
  FUNC1 (inst.operands[0].postind,
	      FUNC0("post-indexed expression used in preload instruction"));
  FUNC1 (inst.operands[0].writeback,
	      FUNC0("writeback used in preload instruction"));
  FUNC1 (!inst.operands[0].preind,
	      FUNC0("unindexed addressing used in preload instruction"));
  FUNC2 (0, /*is_t=*/FALSE);
}