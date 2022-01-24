#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct filter_pred {int /*<<< orphan*/  fn; } ;
struct event_filter {struct filter_pred** preds; scalar_t__ n_preds; } ;
typedef  int /*<<< orphan*/  pred ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct event_filter* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_FILTER_PRED ; 
 int /*<<< orphan*/  FUNC1 (struct event_filter*) ; 
 int /*<<< orphan*/  filter_pred_none ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct event_filter *FUNC3(void)
{
	struct event_filter *filter;
	struct filter_pred *pred;
	int i;

	filter = FUNC2(sizeof(*filter), GFP_KERNEL);
	if (!filter)
		return FUNC0(-ENOMEM);

	filter->n_preds = 0;

	filter->preds = FUNC2(MAX_FILTER_PRED * sizeof(pred), GFP_KERNEL);
	if (!filter->preds)
		goto oom;

	for (i = 0; i < MAX_FILTER_PRED; i++) {
		pred = FUNC2(sizeof(*pred), GFP_KERNEL);
		if (!pred)
			goto oom;
		pred->fn = filter_pred_none;
		filter->preds[i] = pred;
	}

	return filter;

oom:
	FUNC1(filter);
	return FUNC0(-ENOMEM);
}