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
struct dst_entry {int /*<<< orphan*/  __refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(struct dst_entry *dst)
{
	if (dst) {
               int newrefcnt;

		FUNC2();
               newrefcnt = FUNC1(&dst->__refcnt);
	       //FPRINTK("Release dst 0x%p[%u]\n", dst, atomic_read(&dst->__refcnt));
               FUNC0(newrefcnt < 0);
	}
}