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
struct tracepoint_entry {int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*) ; 
 struct tracepoint_entry* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct tracepoint_entry*) ; 
 void* FUNC4 (struct tracepoint_entry*,void*) ; 

__attribute__((used)) static void *FUNC5(const char *name, void *probe)
{
	struct tracepoint_entry *entry;
	void *old;

	entry = FUNC2(name);
	if (!entry)
		return FUNC0(-ENOENT);
	old = FUNC4(entry, probe);
	if (FUNC1(old))
		return old;
	if (!entry->refcount)
		FUNC3(entry);
	return old;
}