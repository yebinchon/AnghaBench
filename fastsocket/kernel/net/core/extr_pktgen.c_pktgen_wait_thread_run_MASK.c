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
struct pktgen_thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC1 (struct pktgen_thread*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pktgen_thread*) ; 

__attribute__((used)) static int FUNC5(struct pktgen_thread *t)
{
	FUNC0(t);

	while (FUNC4(t)) {

		FUNC1(t);

		FUNC2(100);

		if (FUNC3(current))
			goto signal;
		FUNC0(t);
	}
	FUNC1(t);
	return 1;
signal:
	return 0;
}