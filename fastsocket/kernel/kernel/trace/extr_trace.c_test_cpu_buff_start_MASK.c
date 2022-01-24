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
struct trace_seq {int dummy; } ;
struct trace_iterator {int iter_flags; size_t cpu; int idx; int /*<<< orphan*/  started; TYPE_1__* tr; struct trace_seq seq; } ;
struct TYPE_4__ {scalar_t__ skipped_entries; } ;
struct TYPE_3__ {TYPE_2__** data; } ;

/* Variables and functions */
 int TRACE_FILE_ANNOTATE ; 
 int TRACE_ITER_ANNOTATE ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int trace_flags ; 
 int /*<<< orphan*/  FUNC2 (struct trace_seq*,char*,size_t) ; 

__attribute__((used)) static void FUNC3(struct trace_iterator *iter)
{
	struct trace_seq *s = &iter->seq;

	if (!(trace_flags & TRACE_ITER_ANNOTATE))
		return;

	if (!(iter->iter_flags & TRACE_FILE_ANNOTATE))
		return;

	if (FUNC1(iter->cpu, iter->started))
		return;

	if (iter->tr->data[iter->cpu]->skipped_entries)
		return;

	FUNC0(iter->cpu, iter->started);

	/* Don't print started cpu buffer for the first entry of the trace */
	if (iter->idx > 1)
		FUNC2(s, "##### CPU %u buffer started ####\n",
				iter->cpu);
}