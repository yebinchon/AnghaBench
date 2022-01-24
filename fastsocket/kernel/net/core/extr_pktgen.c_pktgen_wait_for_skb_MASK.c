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
struct pktgen_dev {int /*<<< orphan*/  idle_acc; TYPE_1__* skb; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_2__ {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct pktgen_dev*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct pktgen_dev *pkt_dev)
{
	ktime_t idle_start = FUNC2();

	while (FUNC0(&(pkt_dev->skb->users)) != 1) {
		if (FUNC7(current))
			break;

		if (FUNC5())
			FUNC6(pkt_dev);
		else
			FUNC1();
	}
	pkt_dev->idle_acc += FUNC4(FUNC3(FUNC2(), idle_start));
}