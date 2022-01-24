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
struct whc {TYPE_1__* dbg; } ;
struct TYPE_2__ {int /*<<< orphan*/  di_f; int /*<<< orphan*/  asl_f; int /*<<< orphan*/  pzl_f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(struct whc *whc)
{
	if (whc->dbg) {
		FUNC0(whc->dbg->pzl_f);
		FUNC0(whc->dbg->asl_f);
		FUNC0(whc->dbg->di_f);
		FUNC1(whc->dbg);
	}
}