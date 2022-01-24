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
typedef  int uint32_t ;
struct mddi_info {int got_int; int int_enable; int /*<<< orphan*/  int_wait; int /*<<< orphan*/  int_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEN ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 long FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static long FUNC4(struct mddi_info *mddi,
					uint32_t intmask, int timeout)
{
	unsigned long irq_flags;

	FUNC1(&mddi->int_lock, irq_flags);
	mddi->got_int &= ~intmask;
	mddi->int_enable |= intmask;
	FUNC0(mddi->int_enable, INTEN);
	FUNC2(&mddi->int_lock, irq_flags);
	return FUNC3(mddi->int_wait, mddi->got_int & intmask,
				  timeout);
}