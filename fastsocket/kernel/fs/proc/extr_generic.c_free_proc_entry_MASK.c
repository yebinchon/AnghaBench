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
struct proc_dir_entry {unsigned int low_ino; struct proc_dir_entry* data; int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 unsigned int PROC_DYNAMIC_FIRST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void FUNC3(struct proc_dir_entry *de)
{
	unsigned int ino = de->low_ino;

	if (ino < PROC_DYNAMIC_FIRST)
		return;

	FUNC2(ino);

	if (FUNC0(de->mode))
		FUNC1(de->data);
	FUNC1(de);
}