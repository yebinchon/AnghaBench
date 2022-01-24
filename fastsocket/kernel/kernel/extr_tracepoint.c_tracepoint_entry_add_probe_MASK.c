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
struct tracepoint_entry {void** funcs; int refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void** FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tracepoint_entry*) ; 
 int /*<<< orphan*/  FUNC4 (void**,void**,int) ; 

__attribute__((used)) static void *
FUNC5(struct tracepoint_entry *entry, void *probe)
{
	int nr_probes = 0;
	void **old, **new;

	FUNC1(!probe);

	FUNC3(entry);
	old = entry->funcs;
	if (old) {
		/* (N -> N+1), (N != 0, 1) probes */
		for (nr_probes = 0; old[nr_probes]; nr_probes++)
			if (old[nr_probes] == probe)
				return FUNC0(-EEXIST);
	}
	/* + 2 : one for new probe, one for NULL func */
	new = FUNC2(nr_probes + 2);
	if (new == NULL)
		return FUNC0(-ENOMEM);
	if (old)
		FUNC4(new, old, nr_probes * sizeof(void *));
	new[nr_probes] = probe;
	new[nr_probes + 1] = NULL;
	entry->refcount = nr_probes + 1;
	entry->funcs = new;
	FUNC3(entry);
	return old;
}