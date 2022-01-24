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
struct xencomm_handle {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long XENCOMM_INLINE_FLAG ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (void*) ; 

__attribute__((used)) static struct xencomm_handle *FUNC3(void *ptr)
{
	unsigned long paddr;

	FUNC0(!FUNC1((unsigned long)ptr));

	paddr = (unsigned long)FUNC2(ptr);
	FUNC0(paddr & XENCOMM_INLINE_FLAG);
	return (struct xencomm_handle *)(paddr | XENCOMM_INLINE_FLAG);
}