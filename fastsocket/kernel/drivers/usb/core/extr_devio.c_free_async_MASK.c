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
struct async {int /*<<< orphan*/  mem_usage; TYPE_1__* urb; int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {struct async* setup_packet; struct async* transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct async*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct async *as)
{
	FUNC1(as->pid);
	FUNC0(as->urb->transfer_buffer);
	FUNC0(as->urb->setup_packet);
	FUNC2(as->urb);
	FUNC3(as->mem_usage);
	FUNC0(as);
}