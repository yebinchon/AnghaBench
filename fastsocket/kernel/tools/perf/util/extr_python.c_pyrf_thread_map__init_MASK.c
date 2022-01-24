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
struct pyrf_thread_map {int /*<<< orphan*/ * threads; } ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int*,int*,int*) ; 
 int UINT_MAX ; 
 int /*<<< orphan*/ * FUNC1 (int,int,int) ; 

__attribute__((used)) static int FUNC2(struct pyrf_thread_map *pthreads,
				 PyObject *args, PyObject *kwargs)
{
	static char *kwlist[] = { "pid", "tid", "uid", NULL };
	int pid = -1, tid = -1, uid = UINT_MAX;

	if (!FUNC0(args, kwargs, "|iii",
					 kwlist, &pid, &tid, &uid))
		return -1;

	pthreads->threads = FUNC1(pid, tid, uid);
	if (pthreads->threads == NULL)
		return -1;
	return 0;
}