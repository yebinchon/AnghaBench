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
typedef  int /*<<< orphan*/  u64 ;
struct symbol {int dummy; } ;
struct sym_hist {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_4__ {int nr_events; } ;
struct TYPE_3__ {size_t sizeof_sym_hist; size_t nr_histograms; int /*<<< orphan*/  source; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SIZE_MAX ; 
 struct annotation* FUNC1 (struct symbol*) ; 
 size_t FUNC2 (struct symbol*) ; 
 TYPE_2__ symbol_conf ; 
 TYPE_1__* FUNC3 (int) ; 

int FUNC4(struct symbol *sym)
{
	struct annotation *notes = FUNC1(sym);
	const size_t size = FUNC2(sym);
	size_t sizeof_sym_hist;

	/* Check for overflow when calculating sizeof_sym_hist */
	if (size > (SIZE_MAX - sizeof(struct sym_hist)) / sizeof(u64))
		return -1;

	sizeof_sym_hist = (sizeof(struct sym_hist) + size * sizeof(u64));

	/* Check for overflow in zalloc argument */
	if (sizeof_sym_hist > (SIZE_MAX - sizeof(*notes->src))
				/ symbol_conf.nr_events)
		return -1;

	notes->src = FUNC3(sizeof(*notes->src) + symbol_conf.nr_events * sizeof_sym_hist);
	if (notes->src == NULL)
		return -1;
	notes->src->sizeof_sym_hist = sizeof_sym_hist;
	notes->src->nr_histograms   = symbol_conf.nr_events;
	FUNC0(&notes->src->source);
	return 0;
}