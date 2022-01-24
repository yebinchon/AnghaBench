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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (uintptr_t,uintptr_t*,size_t*) ; 

__attribute__((used)) static void
FUNC1(uintptr_t *addrp)
{
	uintptr_t symoff;
	size_t symsize;

	if (FUNC0(*addrp, &symoff, &symsize) != NULL && symoff < symsize)
		*addrp -= symoff;
}