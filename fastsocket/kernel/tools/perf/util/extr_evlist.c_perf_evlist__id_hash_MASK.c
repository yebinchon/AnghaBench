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
typedef  int /*<<< orphan*/  u64 ;
struct perf_sample_id {int /*<<< orphan*/  node; int /*<<< orphan*/  id; struct perf_evsel* evsel; } ;
struct perf_evsel {int dummy; } ;
struct perf_evlist {int /*<<< orphan*/ * heads; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_EVLIST__HLIST_BITS ; 
 struct perf_sample_id* FUNC0 (struct perf_evsel*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct perf_evlist *evlist,
				 struct perf_evsel *evsel,
				 int cpu, int thread, u64 id)
{
	int hash;
	struct perf_sample_id *sid = FUNC0(evsel, cpu, thread);

	sid->id = id;
	sid->evsel = evsel;
	hash = FUNC1(sid->id, PERF_EVLIST__HLIST_BITS);
	FUNC2(&sid->node, &evlist->heads[hash]);
}