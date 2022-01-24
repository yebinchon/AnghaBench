#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* e; void* rw; void* rs; } ;

/* Variables and functions */
 void* BIT_CLR ; 
 void* BIT_SET ; 
 TYPE_1__ bits ; 
 int /*<<< orphan*/  pprt ; 
 int /*<<< orphan*/  pprt_lock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(int data)
{
	FUNC1(&pprt_lock);
	/* present the data to the data port */
	FUNC4(pprt, data);
	FUNC3(20);		/* maintain the data during 20 us before the strobe */

	bits.e = BIT_SET;
	bits.rs = BIT_SET;
	bits.rw = BIT_CLR;
	FUNC0();

	FUNC3(40);		/* maintain the strobe during 40 us */

	bits.e = BIT_CLR;
	FUNC0();

	FUNC3(45);		/* the shortest data takes at least 45 us */
	FUNC2(&pprt_lock);
}