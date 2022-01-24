#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ddg_ptr ;
typedef  TYPE_1__* ddg_node_ptr ;
struct TYPE_6__ {scalar_t__ cuid; int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANTI_DEP ; 
 int /*<<< orphan*/  MEM_DEP ; 
 int /*<<< orphan*/  OUTPUT_DEP ; 
 int /*<<< orphan*/  TRUE_DEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (ddg_ptr g, ddg_node_ptr from, ddg_node_ptr to)
{
  if (FUNC2 (from->insn))
    {
      if (FUNC1 (to->insn))
  	FUNC0 (g, from, to, TRUE_DEP, MEM_DEP, 1);
      else if (from->cuid != to->cuid)
  	FUNC0 (g, from, to, OUTPUT_DEP, MEM_DEP, 1);
    }
  else
    {
      if (FUNC1 (to->insn))
	return;
      else if (from->cuid != to->cuid)
	{
  	  FUNC0 (g, from, to, ANTI_DEP, MEM_DEP, 1);
  	  FUNC0 (g, to, from, TRUE_DEP, MEM_DEP, 1);
	}
    }

}