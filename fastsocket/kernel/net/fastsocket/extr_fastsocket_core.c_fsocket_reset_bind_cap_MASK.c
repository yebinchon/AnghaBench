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
struct cred {int /*<<< orphan*/  cap_effective; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 

__attribute__((used)) static void FUNC1(kernel_cap_t *p)
{
	struct cred *old;

	old = (struct cred *)FUNC0();
	old->cap_effective = *p;
}