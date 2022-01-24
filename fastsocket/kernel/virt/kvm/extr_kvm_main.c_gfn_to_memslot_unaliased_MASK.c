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
struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 struct kvm_memory_slot* FUNC0 (struct kvm_memslots*,int /*<<< orphan*/ ) ; 
 struct kvm_memslots* FUNC1 (struct kvm*) ; 

struct kvm_memory_slot *FUNC2(struct kvm *kvm, gfn_t gfn)
{
	struct kvm_memslots *slots = FUNC1(kvm);
	return FUNC0(slots, gfn);
}