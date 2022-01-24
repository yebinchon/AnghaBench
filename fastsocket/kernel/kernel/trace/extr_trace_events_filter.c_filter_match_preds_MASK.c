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
struct filter_pred {int pop_n; int (* fn ) (struct filter_pred*,void*,int,int) ;} ;
struct event_filter {int n_preds; struct filter_pred** preds; } ;

/* Variables and functions */
 int MAX_FILTER_PRED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct filter_pred*,void*,int,int) ; 
 int FUNC2 (struct filter_pred*,void*,int,int) ; 

int FUNC3(struct event_filter *filter, void *rec)
{
	int match, top = 0, val1 = 0, val2 = 0;
	int stack[MAX_FILTER_PRED];
	struct filter_pred *pred;
	int i;

	for (i = 0; i < filter->n_preds; i++) {
		pred = filter->preds[i];
		if (!pred->pop_n) {
			match = pred->fn(pred, rec, val1, val2);
			stack[top++] = match;
			continue;
		}
		if (pred->pop_n > top) {
			FUNC0(1);
			return 0;
		}
		val1 = stack[--top];
		val2 = stack[--top];
		match = pred->fn(pred, rec, val1, val2);
		stack[top++] = match;
	}

	return stack[--top];
}