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
struct kvm_memslots {int nmemslots; int /*<<< orphan*/ * memslots; } ;
struct kvm {struct kvm_memslots* memslots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_memslots*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC2(struct kvm *kvm)
{
	int i;
	struct kvm_memslots *slots = kvm->memslots;

	for (i = 0; i < slots->nmemslots; ++i)
		FUNC1(&slots->memslots[i], NULL);

	FUNC0(kvm->memslots);
}