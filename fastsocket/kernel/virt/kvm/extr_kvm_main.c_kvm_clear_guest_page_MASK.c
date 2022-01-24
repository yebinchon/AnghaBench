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
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  empty_zero_page ; 
 int FUNC0 (struct kvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

int FUNC1(struct kvm *kvm, gfn_t gfn, int offset, int len)
{
	return FUNC0(kvm, gfn, empty_zero_page, offset, len);
}