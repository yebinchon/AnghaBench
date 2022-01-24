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
struct symbol {int dummy; } ;
struct annotation {int /*<<< orphan*/  lock; TYPE_1__* src; } ;
struct TYPE_2__ {int nr_histograms; int sizeof_sym_hist; int /*<<< orphan*/  histograms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct annotation* FUNC3 (struct symbol*) ; 

void FUNC4(struct symbol *sym)
{
	struct annotation *notes = FUNC3(sym);

	FUNC1(&notes->lock);
	if (notes->src != NULL)
		FUNC0(notes->src->histograms, 0,
		       notes->src->nr_histograms * notes->src->sizeof_sym_hist);
	FUNC2(&notes->lock);
}