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
struct files_struct {int dummy; } ;
struct file {int dummy; } ;
struct fdtable {int max_fds; int /*<<< orphan*/ * fd; TYPE_1__* open_fds; } ;
struct TYPE_2__ {unsigned long* fds_bits; } ;

/* Variables and functions */
 int __NFDBITS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct fdtable* FUNC1 (struct files_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct files_struct*) ; 
 struct file* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct files_struct * files)
{
	int i, j;
	struct fdtable *fdt;

	j = 0;

	/*
	 * It is safe to dereference the fd table without RCU or
	 * ->file_lock because this is the last reference to the
	 * files structure.
	 */
	fdt = FUNC1(files);
	for (;;) {
		unsigned long set;
		i = j * __NFDBITS;
		if (i >= fdt->max_fds)
			break;
		set = fdt->open_fds->fds_bits[j++];
		while (set) {
			if (set & 1) {
				struct file * file = FUNC3(&fdt->fd[i], NULL);
				if (file) {
					FUNC2(file, files);
					FUNC0();
				}
			}
			i++;
			set >>= 1;
		}
	}
}