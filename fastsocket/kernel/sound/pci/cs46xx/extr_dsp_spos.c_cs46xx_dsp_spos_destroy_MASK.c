#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct snd_cs46xx {int /*<<< orphan*/  spos_mutex; struct dsp_spos_instance* dsp_spos_instance; } ;
struct TYPE_5__ {int /*<<< orphan*/  symbols; } ;
struct TYPE_4__ {struct dsp_spos_instance* data; } ;
struct dsp_spos_instance {int nscb; struct dsp_spos_instance* modules; TYPE_2__ symbol_table; TYPE_1__ code; TYPE_3__* scbs; } ;
struct TYPE_6__ {scalar_t__ deleted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dsp_spos_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void  FUNC6 (struct snd_cs46xx * chip)
{
	int i;
	struct dsp_spos_instance * ins = chip->dsp_spos_instance;

	if (FUNC4(!ins))
		return;

	FUNC2(&chip->spos_mutex);
	for (i = 0; i < ins->nscb; ++i) {
		if (ins->scbs[i].deleted) continue;

		FUNC0 ( (ins->scbs + i) );
	}

	FUNC1(ins->code.data);
	FUNC5(ins->symbol_table.symbols);
	FUNC1(ins->modules);
	FUNC1(ins);
	FUNC3(&chip->spos_mutex);
}