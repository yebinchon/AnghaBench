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
struct files_struct {int /*<<< orphan*/  file_lock; } ;
struct fdtable {unsigned long max_fds; TYPE_1__* close_on_exec; } ;
struct TYPE_2__ {unsigned long* fds_bits; } ;

/* Variables and functions */
 long __NFDBITS ; 
 struct fdtable* FUNC0 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static void FUNC4(struct files_struct * files)
{
	long j = -1;
	struct fdtable *fdt;

	FUNC1(&files->file_lock);
	for (;;) {
		unsigned long set, i;

		j++;
		i = j * __NFDBITS;
		fdt = FUNC0(files);
		if (i >= fdt->max_fds)
			break;
		set = fdt->close_on_exec->fds_bits[j];
		if (!set)
			continue;
		fdt->close_on_exec->fds_bits[j] = 0;
		FUNC2(&files->file_lock);
		for ( ; set ; i++,set >>= 1) {
			if (set & 1) {
				FUNC3(i);
			}
		}
		FUNC1(&files->file_lock);

	}
	FUNC2(&files->file_lock);
}