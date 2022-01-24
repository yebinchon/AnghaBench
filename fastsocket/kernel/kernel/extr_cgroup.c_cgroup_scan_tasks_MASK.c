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
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct task_struct {struct timespec start_time; } ;
struct ptr_heap {int size; struct task_struct** ptrs; int /*<<< orphan*/ * gt; } ;
struct cgroup_scanner {int /*<<< orphan*/  (* process_task ) (struct task_struct*,struct cgroup_scanner*) ;int /*<<< orphan*/  cg; int /*<<< orphan*/  (* test_task ) (struct task_struct*,struct cgroup_scanner*) ;struct ptr_heap* heap; } ;
struct cgroup_iter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cgroup_iter*) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct cgroup_iter*) ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct ptr_heap*) ; 
 int FUNC5 (struct ptr_heap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC6 (struct ptr_heap*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 int /*<<< orphan*/  started_after ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,struct timespec*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (struct task_struct*,struct cgroup_scanner*) ; 
 int /*<<< orphan*/  FUNC10 (struct task_struct*,struct cgroup_scanner*) ; 

int FUNC11(struct cgroup_scanner *scan)
{
	int retval, i;
	struct cgroup_iter it;
	struct task_struct *p, *dropped;
	/* Never dereference latest_task, since it's not refcounted */
	struct task_struct *latest_task = NULL;
	struct ptr_heap tmp_heap;
	struct ptr_heap *heap;
	struct timespec latest_time = { 0, 0 };

	if (scan->heap) {
		/* The caller supplied our heap and pre-allocated its memory */
		heap = scan->heap;
		heap->gt = &started_after;
	} else {
		/* We need to allocate our own heap memory */
		heap = &tmp_heap;
		retval = FUNC5(heap, PAGE_SIZE, GFP_KERNEL, &started_after);
		if (retval)
			/* cannot allocate the heap */
			return retval;
	}

 again:
	/*
	 * Scan tasks in the cgroup, using the scanner's "test_task" callback
	 * to determine which are of interest, and using the scanner's
	 * "process_task" callback to process any of them that need an update.
	 * Since we don't want to hold any locks during the task updates,
	 * gather tasks to be processed in a heap structure.
	 * The heap is sorted by descending task start time.
	 * If the statically-sized heap fills up, we overflow tasks that
	 * started later, and in future iterations only consider tasks that
	 * started after the latest task in the previous pass. This
	 * guarantees forward progress and that we don't miss any tasks.
	 */
	heap->size = 0;
	FUNC2(scan->cg, &it);
	while ((p = FUNC1(scan->cg, &it))) {
		/*
		 * Only affect tasks that qualify per the caller's callback,
		 * if he provided one
		 */
		if (scan->test_task && !scan->test_task(p, scan))
			continue;
		/*
		 * Only process tasks that started after the last task
		 * we processed
		 */
		if (!FUNC8(p, &latest_time, latest_task))
			continue;
		dropped = FUNC6(heap, p);
		if (dropped == NULL) {
			/*
			 * The new task was inserted; the heap wasn't
			 * previously full
			 */
			FUNC3(p);
		} else if (dropped != p) {
			/*
			 * The new task was inserted, and pushed out a
			 * different task
			 */
			FUNC3(p);
			FUNC7(dropped);
		}
		/*
		 * Else the new task was newer than anything already in
		 * the heap and wasn't inserted
		 */
	}
	FUNC0(scan->cg, &it);

	if (heap->size) {
		for (i = 0; i < heap->size; i++) {
			struct task_struct *q = heap->ptrs[i];
			if (i == 0) {
				latest_time = q->start_time;
				latest_task = q;
			}
			/* Process the task per the caller's callback */
			scan->process_task(q, scan);
			FUNC7(q);
		}
		/*
		 * If we had to process any tasks at all, scan again
		 * in case some of them were in the middle of forking
		 * children that didn't get processed.
		 * Not the most efficient way to do it, but it avoids
		 * having to take callback_mutex in the fork path
		 */
		goto again;
	}
	if (heap == &tmp_heap)
		FUNC4(&tmp_heap);
	return 0;
}