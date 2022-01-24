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
struct aarp_entry {scalar_t__ xmit_count; struct aarp_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aarp_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct aarp_entry*) ; 
 scalar_t__ sysctl_aarp_retransmit_limit ; 

__attribute__((used)) static void FUNC2(struct aarp_entry **n)
{
	struct aarp_entry *t;

	while (*n)
		/* Expired: if this will be the 11th tx, we delete instead. */
		if ((*n)->xmit_count >= sysctl_aarp_retransmit_limit) {
			t = *n;
			*n = (*n)->next;
			FUNC0(t);
		} else {
			FUNC1(*n);
			n = &((*n)->next);
		}
}