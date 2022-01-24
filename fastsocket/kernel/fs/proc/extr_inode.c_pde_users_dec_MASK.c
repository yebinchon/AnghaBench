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
struct proc_dir_entry {int /*<<< orphan*/  pde_unload_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct proc_dir_entry *pde)
{
	FUNC1(&pde->pde_unload_lock);
	FUNC0(pde);
	FUNC2(&pde->pde_unload_lock);
}