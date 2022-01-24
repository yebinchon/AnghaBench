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
struct rme32 {int irq; int /*<<< orphan*/  pci; scalar_t__ port; int /*<<< orphan*/ * iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rme32*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void *private_data)
{
	struct rme32 *rme32 = (struct rme32 *) private_data;

	if (rme32 == NULL) {
		return;
	}
	if (rme32->irq >= 0) {
		FUNC4(rme32, 0);
		FUNC0(rme32->irq, (void *) rme32);
		rme32->irq = -1;
	}
	if (rme32->iobase) {
		FUNC1(rme32->iobase);
		rme32->iobase = NULL;
	}
	if (rme32->port) {
		FUNC3(rme32->pci);
		rme32->port = 0;
	}
	FUNC2(rme32->pci);
}