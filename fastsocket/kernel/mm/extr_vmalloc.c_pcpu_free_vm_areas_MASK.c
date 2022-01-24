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
struct vm_struct {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_struct**) ; 

void FUNC2(struct vm_struct **vms, int nr_vms)
{
	int i;

	for (i = 0; i < nr_vms; i++)
		FUNC0(vms[i]);
	FUNC1(vms);
}